/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fz.ffbv3.api.exampleAPI;

import com.fz.generic.Db;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import org.json.JSONObject;

/**
 * REST Web Service
 *
 * @author Eri Fizal
 */
@Path("apiSamplePath")
public class APISample {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of APISample
     */
    public APISample() {
    }

    /**
     * Retrieves representation of an instance of com.fz.ffbv3.api.exampleAPI.APISample
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public String getJson() {
        try {
            Db db = new Db();
            Connection con = db.getConnection("jdbc/fz");
            ResultSet rs = con.createStatement().executeQuery("select 1+1");
            JSONObject result = new JSONObject();
            if (rs.next())
                result.append("result", rs.getString(1));
            rs.close();
            con.close();
            return result.toString();
        }
        catch (Exception e){
            // TODO:
            return "[]";
        }
    }

    /**
     * PUT method for updating or creating an instance of APISample
     * @param content representation for the resource
     */
    @PUT
    @Consumes(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
}
