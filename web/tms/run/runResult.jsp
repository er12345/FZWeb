<%@page import="com.fz.tms.service.run.RouteJob"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<%run(new com.fz.tms.service.run.RouteJobListing());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jobs</title>
    </head>
    <body>
    <%@include file="../appGlobal/bodyTop.jsp"%>
        <h3>Runs</h3>
        
        <br>
        <label class="fzLabel">Branch:</label> 
        <label class="fzLabel"><%=get("branch")%></label>
        
        <br>
        <label class="fzLabel">Shift:</label> 
        <label class="fzLabel"><%=get("shift")%></label>

        <br>
        <label class="fzLabel">Vehicles:</label> 
        <label class="fzLabel"><%=get("vehicleCount")%></label>

        <br>
        <label class="fzLabel">RunID:</label> 
        <label class="fzLabel"><%=get("runID")%></label> 
        
        <br><br>
        <table class="table" border1="1" style="border-color: lightgray;">
            <tr style="background-color:orange">
                <th width="100px" class="fzCol">Truck</th>
                <th width="100px" class="fzCol">CustID</th>
                <th width="100px" class="fzCol">Arrv</th>
                <th width="100px" class="fzCol">Depart</th>
                <th width="100px" class="fzCol"><!--map--></th>
                <th width="100px" class="fzCol">DO</th>
                <th width="100px" class="fzCol">Srvc Time</th>
                <th width="100px" class="fzCol">Name</th>
                <th width="100px" class="fzCol">Priority</th>
                <th width="100px" class="fzCol">Dist Chl</th>
                <th width="100px" class="fzCol">Street</th>
                <th width="100px" class="fzCol">District</th>
                <th width="100px" class="fzCol">Zip</th>
                <th width="100px" class="fzCol">Weight</th>
                <th width="100px" class="fzCol">Volume</th>
            </tr>
            
        <%for (RouteJob j : (List<RouteJob>) getList("JobList")) { %> 
        
            <tr <%if (j.arrive.length() == 0){%>style="background-color:l <%}%>">
                <td class="fzCell"><%=j.vehicleCode%></td>
                <td class="fzCell"><%=j.custID%></td>
                <td class="fzCell"><%=j.arrive%></td>
                <td class="fzCell"><%=j.depart%></td>
                <td class="fzCell">
                    <%if (j.arrive.length() > 0){%>
                        <a href="<%=j.getMapLink()%>" target="_blank">Map</a>
                    <%}%>
                </td>
                <td class="fzCell"><%=j.DONum%></td>
                <td class="fzCell"><%=j.getServiceTime()%></td>
                <td class="fzCell"><%=j.name1%></td>
                <td class="fzCell"><%=j.custPriority%></td>
                <td class="fzCell"><%=j.distrChn%></td>
                <td class="fzCell"><%=j.street%></td>
                <td class="fzCell"><%=j.district%></td>
                <td class="fzCell"><%=j.zip%></td>
                <td class="fzCell"><%=j.weight%></td>
                <td class="fzCell"><%=j.volume%></td>
            </tr>
            
        <%} // for ProgressRecord %>
        
        </table>
        
    <%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
