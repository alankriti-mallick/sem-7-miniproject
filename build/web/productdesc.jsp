<%-- 
    Document   : productdesc
    Created on : 16-Jul-2022, 2:26:15 pm
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Product Details</title>
  <link href="https://fonts.googleapis.com/css?family=Bentham|Playfair+Display|Raleway:400,500|Suranna|Trocchi" rel="stylesheet">
  <link rel="stylesheet" href="css/prod.css">
</head>

<body>
        <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            RequestDispatcher rq = request.getRequestDispatcher("Product");
            rq.forward(request, response);
        %>


</body>

</html>
