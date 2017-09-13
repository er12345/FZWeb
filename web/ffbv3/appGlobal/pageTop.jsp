<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%!
    //HttpServletRequest request1;
    PageContext pc;
    
    String get(String paramName){
   
        String x = (String) pc.getRequest().getAttribute(paramName);
        if (x == null) return "";
        return x;
        
    }
    
    List<Object> getList(String paramName){
   
        List<Object> x = (List<Object>) 
                pc.getRequest().getAttribute(paramName);
        if (x == null) 
            return new ArrayList<Object>();
        return x;
        
    }
    
    public void run(com.fz.generic.BusinessLogic logic) throws Exception {
        logic.run(pc);
    }
%>
<%
    //request1 = request;
    pc = pageContext;
%>
