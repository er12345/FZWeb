<%-- 
    Document   : samplePage
    Created on : Sep 18, 2017, 11:22:10 AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<%run(new com.fz.ffbv3.service.sampleService.SampleLogic());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%@include file="../appGlobal/bodyTop.jsp"%>
        <h1>Hello World!</h1>
<%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
