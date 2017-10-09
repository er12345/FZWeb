<%@page import="com.fz.tms.service.run.ProgressRecord"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<%run(new com.fz.tms.service.run.ProgressListing());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Runs Progress</title>
    </head>
    <body>
    <%@include file="../appGlobal/bodyTop.jsp"%>

        <h3>Runs</h3>
        <table class="table">
            <tr>
                <th width="100px" class="fzCol">Branch</th>
                <th width="100px" class="fzCol">Shift</th>
                <th width="100px" class="fzCol">RunID</th>
                <th width="100px" class="fzCol">Status</th>
                <th width="100px" class="fzCol">Msg</th>
            </tr>
            
        <%for (ProgressRecord pr : (List<ProgressRecord>) getList("ProgressList")) { %> 
        
            <tr>
                <td class="fzCell"><%=pr.branch%></td>
                <td class="fzCell"><%=pr.shift%></td>
                <td class="fzCell"><a href="runResult.jsp?runID=<%=pr.runID%>"><%=pr.runID%></a></td>
                <td class="fzCell"><%=pr.status%></td>
                <td class="fzCell"><%=pr.msg%></td>
            </tr>
            
        <%} // for ProgressRecord %>
        
        </table>
        
    <%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
