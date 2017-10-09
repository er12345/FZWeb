<%-- 
    Document   : hvsEstmList
    Created on : Sep 23, 2017, 5:07:33 AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../appGlobal/pageTop.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Run</title>
    </head>
    <body>
  <%@include file="../appGlobal/bodyTop.jsp"%>
  <script>
  $( function() {
    $( "#hvsDt" ).datepicker();
    $( "#hvsDt" ).datepicker( "option", "dateFormat", "yy-mm-dd");
    $( "#hvsDt" ).val(yyyymmddDate(new Date()));
  } );
  </script>
        <h3>Run</h3>
        <form class="container" action="runProcess.jsp" method="post">

            <div class="fzErrMsg">
                <%=get("errMsg")%>
            </div>
            
            <br><br>
            <label class="fzLabel">Branch</label>
            <input class="fzInput" id="branch" 
                   name="branch" value="D314"/>
            
            <br><br>
            <label class="fzLabel">Shift</label>
            <select class="fzInput" id="shift" name="shift" />
                <option value="1">1</option>
                <option value="2">2</option>
            </select>
            
            <br><br>
            <label class="fzLabel">Trip calculation</label>
            <select class="fzInput" id="tripCalc" name="tripCalc" />
                <option value="M">Distance based (faster process)</option>
                <option value="G">Google's traffic based (longer, more precision)</option>
            </select>
            
            <br><br>
            <button class="btn fzButton" type="submit" 
                    name="submit" value="run">Run</button>
            
        </form>         
  <%@include file="../appGlobal/bodyBottom.jsp"%>
    </body>
</html>
