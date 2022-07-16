<%-- 
    Document   : product
    Created on : 17-Jul-2022, 12:22:33 am
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                String img = (String)session.getAttribute("img");
                String name = (String)session.getAttribute("name");
                String price = (String)session.getAttribute("price");
                String discount = (String)session.getAttribute("discount");
                String productcategory = (String)session.getAttribute("productcategory");
            %>
            <img src="<% out.print(img);%>" height="420" width="327">
          </div>
              <div class="product-info">
      <div class="product-text">
        <h1>${name}</h1>
        <h2>Product Category: ${productcategory}</h2>
        <p>Harvest Vases are a reinterpretation<br> of peeled fruits and vegetables as<br> functional objects. The surfaces<br> appear to be sliced and pulled aside,<br> allowing room for growth. </p>
      </div>
      <div class="product-price-btn">
        <p><span>${price}</span>$</p>
        <button type="button">buy now</button>
      </div>
    </div>
  </div>
    </body>
</html>
