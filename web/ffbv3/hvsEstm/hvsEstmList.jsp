<%-- 
    Document   : hvsEstmList
    Created on : Sep 23, 2017, 6:14:45 AM
--%>
<%@page import="com.fz.ffbv3.service.hvsEstm.HvsEstm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estimation List</title>
    </head>
    <body>
    <%@include file="../appGlobal/bodyTop.jsp"%>

        <h3>Estimation List</h3>
        <table class="table">
            <tr>
                <th width="100px" class="fzCol">Harvest Date</th>
                <th width="100px" class="fzCol">Status</th>
                <th width="100px" class="fzCol">Div</th>
                <th width="100px" class="fzCol">Kg</th>
                <th width="100px" class="fzCol"></th>
            </tr>
            
        <%for (HvsEstm he : (List<HvsEstm>) getList("hvsEstmList")) { %> 
        
            <tr>
                <td class="fzCell"><%=he.hvsDate%></td>
                <td class="fzCell"><%=he.status%></td>
                <td class="fzCell"><%=he.divID%></td>
                <td class="fzCell"><%=he.kg%></td>
                <td class="fzCell"><a href="hvsEstmFrm.jsp?hvsEstmID=<%=he.hvsEstmID%>">View</a></td>
            </tr>
            
        <%} // for HvsEstm %>
        
        </table>
        
    <%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
