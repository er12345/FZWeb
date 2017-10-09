/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.tms.service.run;

import com.fz.generic.BusinessLogic;
import com.fz.generic.Db;
import com.fz.util.FZUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

/**
 *
 */
public class RouteJobListing implements BusinessLogic {

    @Override
    public void run(HttpServletRequest request, HttpServletResponse response
            , PageContext pc) throws Exception {
        
        String runID = FZUtil.getHttpParam(request, "runID");
        List<RouteJob> js = new ArrayList<RouteJob>();
        request.setAttribute("JobList", js);
        
        String sql = 
                "select j.customer_ID"
                + ", j.DO_number"
                + ", j.arrive"
                + ", j.depart"
                + ", j.lat"
                + ", j.lon"
                + ", j.vehicle_code"
                + ", j.branch"
                + ", j.shift"
                + ", c.name1"
                + ", c.customer_priority"
                + ", c.distribution_channel"
                + ", c.street"
                + ", c.distric"
                + ", c.postal_code"
                + ", c.city"
                + ", j.weight"
                + ", j.volume"
                + " from bosnet1.dbo.tms_RouteJob j"
                + "     left outer join bosnet1.dbo.customer c"
                + "         on j.customer_id = c.customer_id"
                + " where j.runID = ?"
                + " order by j.routeNb, j.jobNb"
            ;
        
        try (Connection con = (new Db()).getConnection("jdbc/fztms");
                PreparedStatement ps = con.prepareStatement(sql)){

            ps.setString(1, runID);
            
            // get list
            try (ResultSet rs = ps.executeQuery()){
                
                // populate list
                RouteJob prevJ = null;
                int km = 0;
                Set<String> vehicles = new HashSet<String>();
                while (rs.next()) {
                    
                    RouteJob j = new RouteJob();
                    int i = 1;
                    j.runID = runID;
                    j.custID = FZUtil.getRsString(rs, i++, "");
                    j.DONum = FZUtil.getRsString(rs, i++, "");
                    j.arrive = FZUtil.getRsString(rs, i++, "");
                    j.depart = FZUtil.getRsString(rs, i++, "");
                    j.lat = FZUtil.getRsString(rs, i++, "");
                    j.lon = FZUtil.getRsString(rs, i++, "");
                    j.vehicleCode = FZUtil.getRsString(rs, i++, "");
                    j.branch = FZUtil.getRsString(rs, i++, "");
                    j.shift = FZUtil.getRsString(rs, i++, "");
                    
                    j.name1 = FZUtil.getRsString(rs, i++, "");
                    j.custPriority = FZUtil.getRsString(rs, i++, "");
                    j.distrChn = FZUtil.getRsString(rs, i++, "");
                    j.street = FZUtil.getRsString(rs, i++, "");
                    j.district = FZUtil.getRsString(rs, i++, "");
                    j.zip = FZUtil.getRsString(rs, i++, "");
                    j.city = FZUtil.getRsString(rs, i++, "");
                    j.weight = FZUtil.getRsString(rs, i++, "");
                    j.volume = FZUtil.getRsString(rs, i++, "");
                    
                    js.add(j);

                    vehicles.add(j.vehicleCode);
                    
                    // if no prev job/first time
                    // , keep header infos in request attrib
                    if (prevJ == null){
                        request.setAttribute("runID", runID);
                        request.setAttribute("branch", j.branch);
                        request.setAttribute("shift", j.shift);
                    }
                    
                    // else if has prev job within same route
                    else if (prevJ.routeNb == j.routeNb){
                        
                        j.prevJob = prevJ;
                    }
                    
                    // for next round
                    prevJ = j;
                }
                
                request.setAttribute("vehicleCount"
                        , String.valueOf(vehicles.size()));
                
            }
        }
    }

}
