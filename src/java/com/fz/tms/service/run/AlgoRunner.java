/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.tms.service.run;

import com.fz.generic.BusinessLogic;
import com.fz.generic.Db;
import com.fz.util.FZUtil;
import com.fz.util.UrlResponseGetter;
import java.sql.Connection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;
import java.sql.PreparedStatement;

/**
 *
 */
public class AlgoRunner implements BusinessLogic {

    @Override
    public void run(HttpServletRequest request, HttpServletResponse response
            , PageContext pc
    ) throws Exception {
        
        String branchCode = FZUtil.getHttpParam(request, "branch");
        String shift = FZUtil.getHttpParam(request, "shift");
        
        String maxIter = FZUtil.getHttpParam(request, "shift");
        if (maxIter.length() == 0) maxIter = "2000";
        
        String tripCalc = FZUtil.getHttpParam(request, "tripCalc");
        if (tripCalc.length() == 0) tripCalc = "M";
        
        String sql = "insert into bosnet1.dbo.TMS_progress"
                + "(runID"
                + ",status"
                + ",branch"
                + ",shift"
                + ",tripcalc"
                + ",lastupd"
                + ",created"
                + ") values(?,?,?,?,?,?,?)";
        
        boolean success = false;
        String runID = FZUtil.getTimeID();
        
        try (Connection con = (new Db()).getConnection("jdbc/fztms");
                PreparedStatement ps = con.prepareStatement(sql)) {
            
            
            // TODO: insert to tms_progress
            ps.setString(1, runID);
            ps.setString(2, "NEW");
            ps.setString(3, branchCode);
            ps.setString(4, shift);
            ps.setString(5, tripCalc);
            ps.setString(6, FZUtil.getCurTime());
            ps.setString(7, FZUtil.getCurTime());
            ps.executeUpdate();
            
            success = true;
        }
        if (success){
            
            // call algo web
            StringBuffer url = new StringBuffer();
            url.append("http://");
            url.append(request.getServerName());
            url.append(":");
            url.append(request.getServerPort());
            url.append("/fztmsalgo/run.jsp?runID=");
            url.append(runID);
            String resp = UrlResponseGetter.getURLResponse(url.toString());
            
            if (resp.equals("OK")) {
//                // redirect to progress page
//                request.setAttribute("runID", runID);
//                request
//                        .getRequestDispatcher("runProgress.jsp")
//                        .forward(pc.getRequest(), pc.getResponse());
                
                // redirect to progress page
                response.sendRedirect("runProgress.jsp?runID=" + runID);
            }
            else {
                // redirect to run entry page
                request.setAttribute("errMsg", resp);
                request
                        .getRequestDispatcher("runEntry.jsp")
                        .forward(pc.getRequest(), pc.getResponse());
            }
            
        }
    }

}
