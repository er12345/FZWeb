/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.ffbv3.service.harvestplan;

import com.fz.generic.BusinessLogic;
import com.fz.generic.Db;
import com.fz.util.FZUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 */
public class HarvestPlanSave implements BusinessLogic {

    @Override
    public void run(HttpServletRequest request
            , HttpServletResponse response
            , PageContext pc) throws Exception {
        
        // parse JSON
        String jsonInput = FZUtil.getHttpParam(request, "json");
        JSONArray list = new JSONArray(jsonInput);
        
        // for each row
        for (int r = 0; r < list.length(); r++){
            
            // construct sql
            String sql = "insert into fbHarvestEstmDtl(type1, block, tonnage)"
                    + " values(";
            String vals = "";
            
            // for each column
            JSONArray a = list.getJSONArray(r);
            for (int c=0; c<a.length(); c++){
                
                // add column to sql
                if (vals.length() > 0) vals += ",";
                vals += "'" + a.getString(c) + "'";
            }
            sql += vals + ")";
            
            // query insert 
            try (Connection con = (new Db()).getConnection("jdbc/fz")){
                try (Statement stm = con.createStatement()){
                    stm.executeUpdate(sql);
                }
            }
            
        }
        // create output json
        JSONObject result = new JSONObject();
        result.append("result", "OK");
        pc.getOut().println(result.toString());
    }

}
