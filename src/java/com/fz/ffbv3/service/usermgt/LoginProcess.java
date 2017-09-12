/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.ffbv3.service.usermgt;

import com.fz.generic.Db;
import com.fz.util.FZUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 */
public class LoginProcess {
    public void run(
            HttpServletRequest request
            , HttpServletResponse response
    ) throws Exception {
        
        String sql = "";
        
        // get db con from pool
        try (Connection con = (new Db()).getConnection("jdbc/fz")){
            
            try (Statement stm = con.createStatement()){
            
                // get user id and password from http param
                String userID = FZUtil.getHttpParam(request, "userID");
                String password = FZUtil.getHttpParam(request, "password");
                
                // create sql
                sql = "select userName from gbUsr"
                        + " where userID ='" + userID + "'"
                        + " and password ='" + password + "'"
                        ;
                
                // query
                try (ResultSet rs = stm.executeQuery(sql)){
                    
                    // if record exist
                    if (rs.next()){

                        // keep user profile for next view
                        request.getSession()
                                .setAttribute("userName", rs.getString(1));
                        request.getSession()
                                .setAttribute("userID", userID);
                        
                        // redirect to welcome page
                        request.getRequestDispatcher("/main/main.jsp")
                                .forward(request, response);
                    }
                    else {

                        // keep login msg to display in login page
                        request
                                .setAttribute("loginResult"
                                        , "Invalid user name or password");
                        
                        // redirect back to login page
                        request.getRequestDispatcher("login.jsp")
                                .forward(request, response);
                    }
                }
            }
        }
        catch (Exception e){
            
            // re-throw the exception
            throw new Exception("Error login. SQL = " + sql, e);
        }

    }
}
