/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fz.ffbv3.service.vehicle;

import com.fz.ffbv3.service.vehicle.Vehicle;
import com.fz.generic.Db;
import com.fz.util.FZUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Eko
 */
public class VehicleDAO {
    
    public void save(Vehicle inp) throws Exception {
        
    }
    
    public Vehicle loadByID(String id) throws Exception {
        Vehicle v =  null;

        String sql = "select * from fbvehicle where VehicleID = ?" ;
        try (Connection con = (new Db()).getConnection("jdbc/fz");){

            try (PreparedStatement ps = con.prepareStatement(sql)){
                 ps.setString(1, id);
                 try(ResultSet rs = ps.executeQuery()){
                     if (rs.next()) {
                         v =  new Vehicle();
                         v.VehicleID =  rs.getString("VehicleID");
                         v.VehicleName = rs.getString("VehicleName");
                         v.Type = rs.getString("Type");
                         v.Weight = rs.getInt("Weight");
                         v.DefDivCode = rs.getString("DefDivCode");
                         v.DefDriverID = rs.getString("DefDriverID");
                         v.StartLocation = rs.getString("StartLocation");
                         v.StartTime = rs.getString("StartTime");
                         v.Status = rs.getString("Status");
                     }
                 }
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e) {
            throw e;
        }
        return v;
    }

    private Vehicle loadSelfAndChildren(
            Connection con, PreparedStatement psLoader
    ) 
            throws Exception {
        
        Vehicle v = null;
        try (ResultSet rs = psLoader.executeQuery()){

            // if has record
            if (rs.next()){

                v = new Vehicle();
                v.VehicleID = rs.getString("VehicleID");
                v.VehicleName = rs.getString("VehicleName");
                v.Type = rs.getString("Type");
                v.Weight = rs.getInt("Weight");
                v.DefDivCode = rs.getString("DefDivCode");
                v.DefDriverID = rs.getString("DefDriverID");
                v.StartLocation = rs.getString("StartLocation");
                v.StartTime = rs.getString("StartTime");
                v.Status = rs.getString("Status");

            }
            else { // else, no record
                // nothing
            }
        }
        return v;
    }
    
}
