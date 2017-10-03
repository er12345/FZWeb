<%-- 
    Document   : order
    Created on : Sep 19, 2017, 1:17:01 PM
    Author     : Eko
--%>

<%@page import="com.fz.ffbv3.service.order.Order"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pick Order</title>
    </head>
    <body>
        <form action="orderlist.jsp" method="get">
       <%@include file="../appGlobal/bodyTop.jsp"%>
        <script>
        $( function() {
          $( "#tanggal" ).datepicker();
          $( "#tanggal" ).datepicker( "option", "dateFormat", "yy-mm-dd");
          $( "#tanggal" ).val(yyyymmddDate(new Date()));
        } );
<%run(new com.fz.ffbv3.service.order.OrderList());%>
        </script>
        <h3>Pick Order</h3>
        <form action="" method="post">
            <label class="fzlabel">Tanggal</label>
            <input class="fzInput" id="tanggal" name="tanggal" value=""/>
            
            <br/> 
            <br/>
            <table border="1" class="table">
            <tr>
                <th>BINE</th>
                <th>Block #1</th>
                <th>Block #2</th>
            </tr>
            <%
                ArrayList<Order> ol = (ArrayList<Order>)request.getAttribute("res");
                for (Order o : (List<Order>) getList("res")) { %>

            <tr>
                <td><%=o.divID%></td>
                <td><%=o.blockId1%></td>
                <td><%=o.blockId2%></td>
            </tr>
            <%
                }
            %>
        </table>
        </form>
        <a href="order.jsp">Add</a>
  <%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
