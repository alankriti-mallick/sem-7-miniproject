<%-- 
    Document   : delete
    Created on : 18-Jul-2022, 11:49:00 pm
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            
            String uname = (String)session.getAttribute("uname");
            String totalprice = (String)session.getAttribute("totalprice");
            response.sendRedirect("deleteCart.jsp?uname="+uname+"&totalprice="+totalprice);
        %>
    </body>
</html>
