/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.ffbv3.service.usermgt;

import com.fz.generic.BusinessLogic;
import com.fz.generic.Db;
import com.fz.util.FZUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletResponse;


/**
 *
 */
public class LoginLogic implements BusinessLogic {
    
    @Override
    public void run(javax.servlet.jsp.PageContext pc) throws Exception {
        
        String sql = "";
        
        // get db con from pool
        try (Connection con = (new Db()).getConnection("jdbc/fz")){
            
            try (Statement stm = con.createStatement()){
            
                // get user id and password from http param
                String userID = FZUtil.getHttpParam(pc, "userID");
                String password = FZUtil.getHttpParam(pc, "password");
                
                // create sql
                sql = "select userName from gbUsr"
                        + " where userID ='" + userID + "'"
                        + " and password ='" + password + "'"
                        // TODO: hash the password in prod
                        //+ " and password ='" + password.hashCode() + "'"
                        ;
                
                // query
                try (ResultSet rs = stm.executeQuery(sql)){
                    
                    // if record exist
                    if (rs.next()){

                        // keep user profile as session object, for next views
                        pc.getSession()
                                .setAttribute("userName", rs.getString(1));
                        pc.getSession()
                                .setAttribute("userID", userID);
                        
                        // remove password from request
                        // so not carried all the time
                        pc.getRequest().removeAttribute("password");
                        
                        // go to welcome page
                        pc.getRequest()
                                .getRequestDispatcher("../main/main.jsp")
                                .forward(pc.getRequest(), pc.getResponse());
                    }
                    else {

                        // keep login msg to display in login page
                        pc.getRequest()
                                .setAttribute("loginResult"
                                        , "Invalid user name or password");
                        
                        // forward to login page to display loginResult
                        pc.getRequest()
                                .getRequestDispatcher("login.jsp")
                                .forward(pc.getRequest(), pc.getResponse());
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
