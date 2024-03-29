<%-- 
    Document   : welcome
    Created on : 12-Jul-2022, 12:19:49 pm
    Author     : dipte
--%>

<%@page import="java.util.ArrayList"%>
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
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Shopping Delight</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
  
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
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
            <a class="nav-link active" href="login.html">Customer</a>
        </li>
  
         <li class="nav-item">
            <a class="nav-link active" href="adminlogin.html">Admin</a>
         </li>
         
        <li class="nav-item">
            <a class="nav-link active" href="login.html"><i class="fas fa-shopping-cart"></i></a>
        </li>
        
      </ul>
    </div>
  
  
    </nav>
    
 

    <!--carousel-->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkW9N7bkghqHiBCXZYLgqDkP4DNtfFFyzXYA&usqp=CAU" alt="First slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>Exclusive Offers</h5>
            <p>Sale ends today,Hurry!!! </p>
          </div>
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://d3k81ch9hvuctc.cloudfront.net/company/TX3nAd/images/d2ee0a62-abf5-412b-af74-f7ef40a8b985.png" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://i1.wp.com/www.vervemagazine.in/wp-content/uploads/2017/08/Final-600x200_c.jpg" alt="Third slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>Fastest Delivery</h5>
            <p>24 hours guaranteed delivery</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    
    
    <!-- Page Content -->
    
          <!-- Page Content -->
    <div class="container">
              <div class="col-lg-12">
    
      <!--<h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Our Popular Destinations</h1>-->
        <!--Item list-->
        <section class="section-products">
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
           
            <a href="login.html">Buy Now</a>
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
           
            <a href="login.html">Buy Now</a>
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
           
            <a href="login.html">Buy Now</a>
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
            
            <a href="login.html">Buy Now</a>
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
            
             <a href="login.html">Buy Now</a>
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
              <a href="login.html">Buy Now</a>

            </div>
          <!-- </div> -->
        </div>
      </div>
      </div>
      </section>


        <!--Item list-->
          <!--Offer-->
          <div class="container mydiv">
            <div class="row">
<!--                <div class="col-md-4">
                     bbb_deals 
                    <div class="bbb_deals">
                        <div class="ribbon ribbon-top-right"><span><small class="cross">x </small>4</span></div>
                        <div class="bbb_deals_title">Offer ends in 2 days</div>
                        <div class="bbb_deals_slider_container">
                            <div class=" bbb_deals_item">
                                <div class="bbb_deals_image"><img src="https://i.pinimg.com/474x/2e/a4/49/2ea4495e2afc6cc9b0ec70bea3b18acf.jpg" alt=""></div>
                                <div class="bbb_deals_content">
                                    <div class="bbb_deals_info_line d-flex flex-row justify-content-start">
                                        <div class="bbb_deals_item_category"><a href="#">Ethnic</a></div>
                                        <div class="bbb_deals_item_price_a ml-auto"><strike>₹3000</strike></div>
                                    </div>
                                    <div class="bbb_deals_info_line d-flex flex-row justify-content-start">
                                        <div class="bbb_deals_item_name">Long kurti</div>
                                        <div class="bbb_deals_item_price ml-auto">₹2000</div>
                                    </div>
                                    <div class="available">
                                        <div class="available_line d-flex flex-row justify-content-start">
                                            <div class="available_title">Available: <span>6</span></div>
                                            <div class="sold_stars ml-auto"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        </div>
                                        <div class="available_bar"><span style="width:17%"></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>-->
<!--                <div class="col-md-4">
                     bbb_deals 
                    <div class="bbb_deals">
                        <div class="ribbon ribbon-top-right"><span><small class="cross">x </small>2</span></div>
                        <div class="bbb_deals_title">Offer ends in 1 day</div>
                        <div class="bbb_deals_slider_container">
                            <div class=" bbb_deals_item">
                                <div class="bbb_deals_image"><img src="https://evilato.com/wp-content/uploads/2022/01/IMG-20220117-WA0025-300x300.jpg" alt=""></div>
                                <div class="bbb_deals_content">
                                    <div class="bbb_deals_info_line d-flex flex-row justify-content-start">
                                        <div class="bbb_deals_item_category"><a href="#">Ethnic</a></div>
                                        <div class="bbb_deals_item_price_a ml-auto"><strike>₹4500</strike></div>
                                    </div>
                                    <div class="bbb_deals_info_line d-flex flex-row justify-content-start">
                                        <div class="bbb_deals_item_name">Blue churidar</div>
                                        <div class="bbb_deals_item_price ml-auto">₹3000</div>
                                    </div>
                                    <div class="available">
                                        <div class="available_line d-flex flex-row justify-content-start">
                                            <div class="available_title">Available: <span>6</span></div>
                                            <div class="sold_stars ml-auto"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        </div>
                                        <div class="available_bar"><span style="width:17%"></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                     bbb_deals 
                    <div class="bbb_deals">
                        <div class="ribbon ribbon-top-right"><span><small class="cross">x </small>3</span></div>
                        <div class="bbb_deals_title">Offer ends in 2 days</div>
                        <div class="bbb_deals_slider_container">
                            <div class=" bbb_deals_item">
                                <div class="bbb_deals_image"><img src="https://flybuy.in/wp-content/uploads/2020/02/Orange-women-dress-300x300.jpeg" alt=""></div>
                                <div class="bbb_deals_content">
                                    <div class="bbb_deals_info_line d-flex flex-row justify-content-start">
                                        <div class="bbb_deals_item_category"><a href="#">Ethnic</a></div>
                                        <div class="bbb_deals_item_price_a ml-auto"><strike>₹1000</strike></div>
                                    </div>
                                    <div class="bbb_deals_info_line d-flex flex-row justify-content-start">
                                        <div class="bbb_deals_item_name">Fiery Orange</div>
                                        <div class="bbb_deals_item_price ml-auto">₹750</div>
                                    </div>
                                    <div class="available">
                                        <div class="available_line d-flex flex-row justify-content-start">
                                            <div class="available_title">Available: <span>6</span></div>
                                            <div class="sold_stars ml-auto"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        </div>
                                        <div class="available_bar"><span style="width:17%"></span></div>
                                    </div>
                                </div>
                            </div>-->
                        <!--</div>-->
<!--                    </div>
                </div>-->
<!--            </div>
        </div>-->
    <!--Offer end-->
    
  
    <!-- Item slider-->

<div class="bbb_viewed">
    <div class="container">
        <div class="row">
            <div class="col">
               <div class="bbb_main_container">
                <div class="bbb_viewed_title_container">
                    <h3 class="bbb_viewed_title">Best selling products</h3>
                    <div class="bbb_viewed_nav_container">
                        <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                        <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                    </div>
                </div>
                <div class="bbb_viewed_slider_container">
                    <div class="owl-carousel owl-theme bbb_viewed_slider">
                        <div class="owl-item">
                            <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_viewed_image"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924153/alcatel-smartphones-einsteiger-mittelklasse-neu-3m.jpg" alt=""></div>
                                <div class="bbb_viewed_content text-center">
                                    <div class="bbb_viewed_price">₹12225<span>₹13300</span></div>
                                    <div class="bbb_viewed_name"><a href="#">Alkatel Phone</a></div>
                                </div>
                                <ul class="item_marks">
                                    <li class="item_mark item_discount">-25%</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_viewed_image"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924221/51_be7qfhil.jpg" alt=""></div>
                                <div class="bbb_viewed_content text-center">
                                    <div class="bbb_viewed_price">₹30079</div>
                                    <div class="bbb_viewed_name"><a href="#">Samsung LED</a></div>
                                </div>
                                <ul class="item_marks">
                                    <li class="item_mark item_discount">-25%</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_viewed_image"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt=""></div>
                                <div class="bbb_viewed_content text-center">
                                    <div class="bbb_viewed_price">₹22250</div>
                                    <div class="bbb_viewed_name"><a href="#">Samsung Mobile</a></div>
                                </div>
                                <ul class="item_marks">
                                    <li class="item_mark item_discount">-25%</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="bbb_viewed_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_viewed_image"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924275/images.jpg" alt=""></div>
                                <div class="bbb_viewed_content text-center">
                                    <div class="bbb_viewed_price">₹1379</div>
                                    <div class="bbb_viewed_name"><a href="#">Huawei Power</a></div>
                                </div>
                                <ul class="item_marks">
                                    <li class="item_mark item_discount">-25%</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_viewed_image"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924361/21HmjI5eVcL.jpg" alt=""></div>
                                <div class="bbb_viewed_content text-center">
                                    <div class="bbb_viewed_price">₹225<span>₹300</span></div>
                                    <div class="bbb_viewed_name"><a href="#">Sony Power</a></div>
                                </div>
                                <ul class="item_marks">
                                    <li class="item_mark item_discount">-25%</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                        <div class="owl-item">
                            <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_viewed_image"><img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt=""></div>
                                <div class="bbb_viewed_content text-center">
                                    <div class="bbb_viewed_price">₹13275</div>
                                    <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                </div>
                                <ul class="item_marks">
                                    <li class="item_mark item_discount">-25%</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
               </div> 
            </div>
        </div>
    </div>
</div>

     <!-- Footer-->
     <footer class="bg-dark text-center text-white">
      <!-- Grid container -->
      <div class="container p-4 pb-0">
        <!-- Section: Social media -->
        <section class="mb-4">
          <!-- Facebook -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fab fa-facebook-f"></i
          ></a>
    
          <!-- Twitter -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fab fa-twitter"></i
          ></a>
    
          <!-- Google -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fab fa-google"></i
          ></a>
    
          <!-- Instagram -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fab fa-instagram"></i
          ></a>
    
         
        </section>
        <!-- Section: Social media -->
      </div>
      <!-- Grid container -->
    
      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2020 Copyright:
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
