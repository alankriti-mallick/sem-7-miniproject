<%-- 
    Document   : adminredirect
    Created on : 19-Jul-2022, 9:26:30 pm
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>redirect Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            RequestDispatcher rq = request.getRequestDispatcher("AdminView");
            rq.forward(request, response);
        %>
        
    </body>
</html>
