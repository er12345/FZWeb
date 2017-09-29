<%-- 
    Document   : order
    Created on : Sep 19, 2017, 1:17:01 PM
    Author     : Eko
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pick Order</title>
    </head>
    <body>
       <%@include file="../appGlobal/pageTop.jsp"%>
        <h3>Pick Order</h3>
        <form action="" method="post">
            <table>
            <tr>
                <th>BINE</th>
                <th>Block #1</th>
                <th>Block #2</th>
            </tr>
            <%
                if (rs!=null) {
                {
                out.write("<tr><td>tes</td>");
                out.write("<td>tes1</td>");
                out.write("<td>tes2</td></tr>");
                }
                }
            %>
        </table>
    </body>
</html>
