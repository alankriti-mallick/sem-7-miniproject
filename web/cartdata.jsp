<%-- 
    Document   : cartdata
    Created on : 18-Jul-2022, 9:33:57 pm
    Author     : dipte
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
    </head>
    <body>
        <%
          
           if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            
           ArrayList<String> namelist = (ArrayList<String>)session.getAttribute("namelist");
           ArrayList<String> pricelist = (ArrayList<String>)session.getAttribute("pricelist");
           ArrayList<String> productcategorylist = (ArrayList<String>)session.getAttribute("productcategorylist");
           
           int n = namelist.size();
           
           for(int i=0;i<n;i++){
                out.println(namelist.get(i)+" "+pricelist.get(i)+" "+productcategorylist.get(i)+" ---> ");
            }
            String uname = (String)session.getAttribute("uname");
        %>
        
        
        <form action="delete.jsp">
            <input type="submit" value="Delete Item">
        </form>
    </body>
</html>
