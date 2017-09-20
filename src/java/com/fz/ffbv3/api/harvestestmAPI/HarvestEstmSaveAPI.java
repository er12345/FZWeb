/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fz.ffbv3.api.harvestestmAPI;

import com.fz.ffbv3.service.harvestestm.HarvestEstm;
import com.fz.generic.Db;
import com.fz.generic.ReturnValue;
import com.fz.util.FZUtil;
import com.google.gson.Gson;
import java.sql.Connection;
import java.sql.Statement;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import org.json.JSONObject;

/**
 * REST Web Service
 *
 * @author Eri Fizal
 */
@Path("hvsEstmSave")
public class HarvestEstmSaveAPI {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of HarvestEstmSaveAPI
     */
    public HarvestEstmSaveAPI() {
    }

    /**
     * Retrieves representation of an instance of com.fz.ffbv3.service.harvestestm.HarvestEstmSaveAPI
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getJson(@QueryParam("json") String jsonInput) {
        
        ReturnValue returnValue = new ReturnValue();
        Gson gson = new Gson();
        try {
            
            try (
                Connection con = (new Db()).getConnection("jdbc/fz");
                Statement stm = con.createStatement()
                )  {
                
                // parse JSON into object
                HarvestEstm hp = gson.fromJson(jsonInput, HarvestEstm.class);

                // insert each rows
                for (String[] ss : hp.estimateRows){

                    // create sql value list
                    String vals = "";
                    vals += "'" + ss[0] + "'"; // type
                    vals += ",'" + ss[1] + "'"; // block
                    vals += ",'" + ss[2] + "'"; // kg

                    String sql = "insert into fbHvsEstmDtl"
                            + "(taskType, blocks, size1)"
                            + " values("
                            + vals + ")";

                    // query insert 
                    stm.executeUpdate(sql);

                }

                // create returnValue 
                returnValue.success = true;
                returnValue.msg = "Success!";
            }
        }
        catch(Exception e){
            
            // create error returnValue 
            String msg = FZUtil.toStackTraceText(e);
            returnValue.success = false;
            returnValue.msg = msg;
            
            System.out.println(msg);
        }

        // convert returnValue to json, return it
        String jsonOutput = gson.toJson(returnValue, ReturnValue.class);
        return jsonOutput;
    }

}
