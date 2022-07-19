<%-- 
    Document   : deleteproduct
    Created on : 19-Jul-2022, 11:23:53 am
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DeleteProduct Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            
            RequestDispatcher rq = request.getRequestDispatcher("Delete");
            rq.forward(request, response);
        %>
        
    </body>
</html>
