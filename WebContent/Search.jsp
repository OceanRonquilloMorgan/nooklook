<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Search- NookLook</title>
    <link rel="stylesheet" href="./css/Search.css">
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
    
    <!--  Search Form -->
    <div class="jumbotron bg-white">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <h2 class="mb-5">Search Spots <br />
              <span class="h3"><small class="text-muted">Type in a location below to search for spots in your area </small></span>
            </h2>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form>
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" class="form-control form-control-lg" placeholder="Enter your location">
                </div>
                <div class="col-12 col-md-3">
                  <button type="submit" class="btn btn-lg btn-dark text-uppercase font-weight-bold mb-2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    
    <!--  Recommendations for Non-Logged In Users -->
    <div style="margin-bottom: 0;" class="jumbotron text-center">
      <h4>Here are a few recommendations to get you started in your search!</h4>
      <br />
      <br />
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <h5>Downtown LA</h5>
            <img style="height: 250px; width: 250px;" class="rounded mx-auto d-block" src="img/recommendation1.jpg">
          </div>
          <div class="col-sm-4">
            <h5>Koreatown</h5>
            <img style="height: 250px; width: 250px;" class="rounded mx-auto d-block" src="img/recommendation2.jpg">
          </div>
          <div class="col-sm-4">
            <h5>Santa Monica</h5>
            <img style="height: 250px; width: 250px;" class="rounded mx-auto d-block" src="img/recommendation3.jpg">
          </div>
        </div>
      </div>
    </div>
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <h4 class="m-0 font-weight-bold text-white text-center">Copyright &copy; Dream Team 2019</h4>
      </div>
    </footer>
  </body>
</html>