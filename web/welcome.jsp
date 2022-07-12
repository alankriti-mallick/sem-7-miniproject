<%-- 
    Document   : welcome
    Created on : 12-Jul-2022, 12:19:49 pm
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("index.html");
            }
        %>
        
        <h1>Welcome ${uname}</h1>
        <form action="Logout" method="post">
            <input type="submit" value="LogOut">
        </form>
    </body>
</html>
