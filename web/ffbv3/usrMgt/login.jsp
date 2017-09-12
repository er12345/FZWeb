<%-- 
    Document   : login
    Created on : Sep 12, 2017, 6:23:48 PM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../generic/header.jsp"%>
    </head>
    <body>
        <%@include file="../generic/bodytop.jsp"%>
        <%(new com.fz.ffbv3.service.usermgt.LoginHeader()).run(request,response);%>
        <h2>Login</h2>
        <br>
        <br>
        <form class="w3-container" action="loginProcess.jsp">

            <div class="fzerrmsg">
                <%=com.fz.util.FZUtil.getAttr(request, "loginResult")%>
            </div>
            <br>
            <label class="fzlabel">User ID</label>
            <input class="fzinput" type="text" id="userID" name="userID">
            <br>
            <label class="fzlabel">Password</label>
            <input class="fzinput" type="password" id="password" name="password">
            <br>
            <button class="fzbutton" type="submit">GO</button>
        </form>         
    </body>
</html>
