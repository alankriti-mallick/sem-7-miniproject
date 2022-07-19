<%-- 
    Document   : cart
    Created on : 17-Jul-2022, 12:21:45 pm
    Author     : dipte
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
        <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            RequestDispatcher rq = request.getRequestDispatcher("Cart");
            rq.forward(request, response);
        
        %>
    </body>
</html>
