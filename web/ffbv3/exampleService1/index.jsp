<%-- 
    Document   : index
    Created on : Sep 12, 2017, 3:04:15 PM
--%>

<%@page import="com.fz.ffbv3.service.exampleService1.ExampleService1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>1 + 1 = <%=(new ExampleService1()).getOutput()%></h1>
    </body>
</html>
