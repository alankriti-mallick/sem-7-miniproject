<%-- 
    Document   : addCart
    Created on : 18-Jul-2022, 8:38:16 pm
    Author     : dipte
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addCart Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            
            String uname = (String)session.getAttribute("uname");
            String name = (String)session.getAttribute("name");
            String price =(String)session.getAttribute("price");
            String productcategory =(String)session.getAttribute("productcategory");
            int c_id = 0;
            
            
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                 
            PreparedStatement ps = con.prepareStatement("insert into cartdata values(?,?,?,?,?)");

            ps.setInt(1,c_id);
            ps.setString(2,uname);
            ps.setString(3,name);
            ps.setString(4,price);
            ps.setString(5,productcategory);
            
            int i=ps.executeUpdate();
            if(i>0){
                session = request.getSession();
                response.sendRedirect("cart.jsp?uname="+uname);
            }
        }
        catch(Exception e2){
            out.print(e2);
        }

    %>
        
    </body>
</html>
