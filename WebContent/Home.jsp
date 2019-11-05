<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Home - NookLook</title>
    <link rel="stylesheet" href="./css/Home.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
  </head>
  <body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="Home.jsp">
      <img src="./img/logo.png" width="30px" height="30px" class="d-inline-block align-top" alt="">
      <strong>&nbsp;&nbsp;NookLook</strong>
      </a>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-item nav-link" href="Login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-item nav-link" href="Register.jsp">Register</a>
        </li>
      </ul>
    </nav>
    
    <!-- Home Search -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 p-0">
          <div id="main" class="jumbotron min-vh-100 text-center m-0 d-flex flex-column justify-content-center">
            <h1 class="mb-5">Find Your Next Favorite Study Spot!</h1>
            <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
              <form>
                <div class="form-row">
                  <div class="col-12 col-md-9 mb-2 mb-md-0">
                    <input type="email" class="form-control form-control-lg" placeholder="Enter your city...">
                  </div>
                  <div class="col-12 col-md-3">
                    <button type="submit" class="btn btn-block btn-lg btn-dark text-light">Search!</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer -->
    <!--       <footer class="py-5 bg-dark">
      <div class="container">
         <p class="m-0 text-center text-white">Copyright &copy; Dream Team 2019</p>
      </div>
      </footer> -->
  </body>
</html>