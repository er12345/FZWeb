/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fz.generic;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

/**
 *
 */
public class PageTopUtils {
    
    public static String get(String paramName, PageContext pc) {
        String x = (String) pc.getRequest().getAttribute(paramName);
        if (x == null) return "";
        return x;
        
    }
    
    public static List<Object> getList(String paramName, PageContext pc){
        List<Object> x = (List<Object>) 
                pc.getRequest().getAttribute(paramName);
        if (x == null) 
            return new ArrayList<Object>();
        return x;
        
    }
    
    public static void run(BusinessLogic logic, PageContext pc)
        throws Exception {
        try {
            logic.run(
                (HttpServletRequest) pc.getRequest()
                , (HttpServletResponse) pc.getResponse()
                , pc);
        }
        catch (Exception e){
            // TODO: create more proper exception handler
            // i.e. redirect to general error page
            throw new Exception("Error running business logic. ", e);
        }
    }
    
    public static void checkLogin(PageContext pc)
        throws Exception {
        try {
            //TODO
            
        }
        catch (Exception e){
            throw new Exception("Error checking login. ", e);
        }
    }
}
