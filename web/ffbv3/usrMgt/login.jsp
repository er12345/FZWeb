<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@include file="../appGlobal/bodyTop.jsp"%>
        <h2>Login</h2>
        <br>
        <br>
        <form class="w3-container" action="entry.jsp" method="post">

            <div class="fzErrMsg">
                <%=get("loginResult")%>
            </div>
            <br>
            <label class="fzLabel">User ID</label>
            <input class="fzInput" type="text" id="userID" name="userID">
            <br>
            <label class="fzLabel">Password</label>
            <input class="fzInput" type="password" id="password" name="password">
            <br>
            <button class="fzButton" type="submit">GO</button>
        </form>         
        <%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
