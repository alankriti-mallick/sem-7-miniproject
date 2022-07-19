<%-- 
    Document   : men
    Created on : 19-Jul-2022, 7:43:04 pm
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css" rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/carousel.css">
        <link rel="stylesheet" href="css/product.css">
    
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>

        <script src="script/style.js"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">

        <!--carousel links-->

    </head>
    <body>
         <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            String uname = (String)session.getAttribute("uname");
        %>
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Shopping Delight</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
  
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        <!-- <li class="nav-item">
          <a class="nav-link active" href="#">About Us</a>
        </li> -->
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Category
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: rgba(0,0,0,0); width: 30%;">
  
            
          <div class="container" style="background-color: rgba(0,0,0,0);">
              <div class="">
                <div class="col-md-6">
                  <span class="text-uppercase text-white">Category</span>
                  <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="men.jsp">Men</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="women.jsp">Women</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="kids.jsp">Kids</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="electronics.jsp">Electronics</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="furniture.jsp">Furniture</a>
                    </li>
                  </ul>
                </div>
                
                
              </div>
            </div>
            <!--  /.container  -->
          
  
          </div>
        </li>
   
        <li class="nav-item">
            <form action="Logout" method="post">
                <input style="background-color: rgba(0,0,0,0);
    border: hidden;" class ="nav-link active" type="submit" value="Logout">
            </form>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active">Welcome ${uname}</a>
        </li>
  
        <li class="nav-item">
            <a class="nav-link active" href="<% out.print("cartdata.jsp?uname="+uname);%>"><i class="fas fa-shopping-cart"></i></a>
        </li>
      </ul>
    </div>
  
  
    </nav>

    
    
    <!-- Page Content -->
    
          <!-- Page Content -->
    <div class="container">
              <div class="col-lg-12">
    
      <!--<h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Our Popular Destinations</h1>-->
        <!--Item list-->
        <section class="section-products">
            <h2 style="text-align: center; font-weight: bold; margin-bottom: 15px;">KID'S PRODUCT</h2>
            <div class="product-container">
      <div class="container card-container">
        <div class="product-card">
          <div class="card-img">
            <img
              src="https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg"
              alt=""
            />
          </div>
          <div class="card-desc">
            <h3>Product Name</h3>
            <%!
                  String img1 = "https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg";
                  String p_id1 = "T001";
            %>
            <a href="<% out.print("productdesc.jsp?"+"p_id="+p_id1+"&img="+img1);%>">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="container card-container">
        <div class="product-card">
          <div class="card-img">
            <img
              src="https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg"
              alt=""
            />
          </div>
          <div class="card-desc">
            <h3>Product Name</h3>
            <%!
                  String img2 = "https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg";
                  String p_id2 = "T002";
            %>
            <a href="<% out.print("productdesc.jsp?"+"p_id="+p_id2+"&img="+img2);%>">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="container card-container">
        <div class="product-card">
          <div class="card-img">
            <img
              src="https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg"
              alt=""
            />
          </div>
          <div class="card-desc">
            <h3>Product Name</h3>
            <%!
                  String img3 = "";
                  String p_id3 = "T003";
            %>
            <a href="<% out.print("productdesc.jsp?"+"p_id="+p_id3+"&img="+img3);%>">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="container card-container">
        <div class="product-card">
          <div class="card-img">
            <img
              src="https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg"
              alt=""
            />
          </div>
          <div class="card-desc">
            <h3>Product Name</h3>
            <%!
                  String img4 = "";
                  String p_id4 = "T004";
            %>
            <a href="<% out.print("productdesc.jsp?"+"p_id="+p_id4+"&img="+img4);%>">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="container card-container">
        <div class="product-card">
          <div class="card-img">
            <img
              src="https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg"
              alt=""
            />
          </div>
          <div class="card-desc">
            <h3>Product Name</h3>
            <%!
                  String img5 = "";
                  String p_id5 = "T005";
             %>
             <a href="<% out.print("productdesc.jsp?"+"p_id="+p_id5+"&img="+img5);%>">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="container card-container">
        <div class="product-card">
          <div class="card-img">
            <img
              src="https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-yuri-manei-2235071.jpg&fm=jpg"
              alt=""
            />
          </div>
          <!-- <div class="card-desc-container"> -->
            <div class="card-desc">
              <h3>Product Name</h3>
              <%!
                  String img6 = "";
                  String p_id6 = "T006";
              %>
              <a href="<% out.print("productdesc.jsp?"+"p_id="+p_id6+"&img="+img6);%>">Buy Now</a>

            </div>
          <!-- </div> -->
        </div>
      </div>
      </div>
      </section>
        <!-- Section: Social media -->
      </div>
      <!-- Grid container -->
    
      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2022 Copyright:
        <a class="text-white" href="#">Shopping Delight.com</a>
      </div>
      <!-- Copyright -->
    </footer>

    <!-- Footer-->
    
    
    <!-- Optional JavaScript; choose one of the two! -->


    <!-- Option 1: Bootstrap Bundle with Popper -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
