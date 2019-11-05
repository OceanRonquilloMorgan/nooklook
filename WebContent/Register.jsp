<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Register - NookLook</title>
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
    
    <!-- Login Form -->
    <div class="container-fluid">
      <div class="row">
        <div id="main" class="jumbotron min-vh-100 m-0 d-flex flex-column">
          <div class="container">
            <h1 class="mb-5">Register A New Account</h1>
            <form>
              <div class="form-group">
                <label for="exampleUsername">Username</label>
                <input type="text" class="form-control" id="exampleUsername" aria-describedby="usernameHelp" placeholder="Enter username">
              </div>
              <div class="form-group">
                <label for="exampleUsername">First Name</label>
                <input type="text" class="form-control" id="exampleFirstName" aria-describedby="firstNameHelp" placeholder="Enter first name">
              </div>
              <div class="form-group">
                <label for="exampleUsername">Last Name</label>
                <input type="text" class="form-control" id="exampleLastName" aria-describedby="lastNHelp" placeholder="Enter last name">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
              </div>
              <button type="submit" class="btn btn-dark text-light">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <body>
  </body>
</html>