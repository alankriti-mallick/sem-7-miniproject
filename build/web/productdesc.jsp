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
            
        %>
  <div class="wrapper">
    <div class="product-img">
      <%
          String img = request.getParameter("img");
      %>
      <img src="<% out.print(img);%>" height="420" width="327">
    </div>
    <%
        String name = null;
        String price = null;
        String discount=null;
        String productcategory=null;
        
        String p_id = request.getParameter("p_id");
        PreparedStatement ps1 = null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","diptesh");
            
            System.out.println("Connection created");  
                
            ps1 = con.prepareStatement("select * from tblproduct where p_id=?");

            System.out.println(p_id);
            ps1.setString(1,p_id);

            ResultSet rs1 = ps1.executeQuery();
            ResultSetMetaData c = rs1.getMetaData();
            System.out.println(c.getColumnCount());
            
            if(rs1.next()) {
                System.out.println(rs1.getRow());
                name = rs1.getString("name");
                price = rs1.getString("price");
                discount = rs1.getString("discount");
                productcategory = rs1.getString("productcategory");
                    
                session.setAttribute("name",name);
                session.setAttribute("price",price);
                session.setAttribute("discount", discount);
                session.setAttribute("productcategory",productcategory);
                session.setAttribute("img", img);
                response.sendRedirect("product.jsp");
                
                System.out.println(name+" "+price+" "+discount+" "+productcategory);

            }else{
                out.println("Unexpected Error!");
            }
            
        }
        catch(SQLException e1){
            e1.printStackTrace();
        }
    %>


</body>

</html>
