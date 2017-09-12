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
        
        Db db = new Db();
        Connection con = db.getConnection("jdbc/fz");
        
        String userID = FZUtil.getHttpParam(request, "userID");
        String password = FZUtil.getHttpParam(request, "password");
        
        // TODO hash the password
        String sql = "select userName from gbUsr"
                + " where userID ='" + userID + "'"
                + " and password ='" + password + "'"
                ;
        ResultSet rs = con.createStatement().executeQuery(sql);
        if (rs.next()){
        
            // keep user profile
            request.getSession().setAttribute("userName", rs.getString(1));
            request.getSession().setAttribute("userID", userID);
            rs.close();
            
            // redirect to welcome page
            request.getRequestDispatcher("/main/main.jsp")
                    .forward(request, response);
        }
        else {
            
            rs.close();
            
            // redirect back to login page
            request.setAttribute("loginResult", "Invalid user name or password");
            request.getRequestDispatcher("login.jsp")
                    .forward(request, response);
        }
    }
}
