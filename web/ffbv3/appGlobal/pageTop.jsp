<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%!
    HttpServletRequest request1;
    
    String get(String paramName){
   
        String x = (String) request1.getAttribute(paramName);
        if (x == null) return "";
        return x;
        
    }
    
    List<Object> getList(String paramName){
   
        List<Object> x = (List<Object>) request1.getAttribute(paramName);
        if (x == null) 
            return new ArrayList<Object>();
        return x;
        
    }
%>
<%
    request1 = request;
%>
