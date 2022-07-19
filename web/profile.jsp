<%-- 
    Document   : profile
    Created on : 19-Jul-2022, 8:22:27 pm
    Author     : dipte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link
      href="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css"
      rel="stylesheet"
    />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/carousel.css" />
    <link rel="stylesheet" href="css/product.css" />
    <link rel="stylesheet" href="css/prod.css" />
    <link rel="stylesheet" href="css/profile.css" />

    <link
      href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link
      href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link
      href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>

    <script src="script/style.js"></script>

    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.0.7/css/all.css"
    />

    <!--carousel links-->
  </head>
  <body>
      <%
            if(session.getAttribute("uname")==null){
                response.sendRedirect("login.html");
            }
            
            String uname = (String)session.getAttribute("uname");
            int age = (int)session.getAttribute("age");
            String state = (String)session.getAttribute("state");
            String city = (String)session.getAttribute("city");
            String pin = (String)session.getAttribute("pin");
            String phno = (String)session.getAttribute("phno");
            String email = (String)session.getAttribute("email");
       %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Shopping Delight</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <!-- <li class="nav-item">
          <a class="nav-link active" href="#">About Us</a>
        </li> -->
          <li class="nav-item dropdown">
            <a
              class="nav-link active dropdown-toggle"
              href="#"
              id="navbarDropdown"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Category
            </a>
            <div
              class="dropdown-menu"
              aria-labelledby="navbarDropdown"
              style="background-color: rgba(0, 0, 0, 0); width: 30%"
            >
              <div class="container" style="background-color: rgba(0, 0, 0, 0)">
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
              <input
                style="background-color: rgba(0, 0, 0, 0); border: hidden"
                class="nav-link active"
                type="submit"
                value="Logout"
              />
            </form>
          </li>

          <li class="nav-item">
            <a class="nav-link active">Welcome ${uname}</a>
          </li>

          <li class="nav-item">
            <a class="nav-link active" href="#"
              ><i class="fas fa-shopping-cart"></i
            ></a>
          </li>
        </ul>
        <!-- <form class="form-inline my-2 my-lg-0">
          <input
            class="form-control mr-sm-2"
            type="search"
            placeholder="Search"
            aria-label="Search"
          />
          <button class="btn btn-outline-light my-2 my-sm-0" type="submit">
            Search
          </button>
        </form> -->
      </div>
    </nav>

    <div class="profile-container">
      <div class="profile-box">
        <h3>PROFILE</h3>
        <ul>
          <li>
            <strong>Username:</strong>
            <p><% out.print(uname); %></p>
          </li>
          <li>
            <strong>Age:</strong>
            <p><% out.print(age); %></p>
          </li>
          <li>
            <strong>State:</strong>
            <p><% out.print(state); %></p>
          </li>
          <li>
            <strong>City:</strong>
            <p><% out.print(city); %></p>
          </li>
          <li>
            <strong>PIN:</strong>
            <p><% out.print(pin); %></p>
          </li>
          <li>
            <strong>Phone No:</strong>
            <p><% out.print(phno); %></p>
          </li>
          <li>
            <strong>Email:</strong>
            <p><% out.print(email); %></p>
          </li>
        </ul>
      </div>
    </div>

    <!-- Footer-->
    <footer class="bg-dark text-center text-white">
      <!-- Grid container -->
      <div class="container p-4 pb-0">
        <!-- Section: Social media -->
        <section class="mb-4">
          <!-- Facebook -->
          <a
            class="btn btn-outline-light btn-floating m-1"
            href="#!"
            role="button"
            ><i class="fab fa-facebook-f"></i
          ></a>

          <!-- Twitter -->
          <a
            class="btn btn-outline-light btn-floating m-1"
            href="#!"
            role="button"
            ><i class="fab fa-twitter"></i
          ></a>

          <!-- Google -->
          <a
            class="btn btn-outline-light btn-floating m-1"
            href="#!"
            role="button"
            ><i class="fab fa-google"></i
          ></a>

          <!-- Instagram -->
          <a
            class="btn btn-outline-light btn-floating m-1"
            href="#!"
            role="button"
            ><i class="fab fa-instagram"></i
          ></a>
        </section>
        <!-- Section: Social media -->
      </div>
      <!-- Grid container -->

      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
        © 2022 Copyright:
        <a class="text-white" href="#">Shopping Delight.com</a>
      </div>
      <!-- Copyright -->
    </footer>

    <!-- Footer-->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>