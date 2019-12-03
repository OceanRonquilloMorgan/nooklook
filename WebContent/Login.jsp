<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login - NookLook</title>
    <link rel="stylesheet" href="./css/Login.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <style>
      .mes {
      margin-left: 40%;
      color: red;
      font-size: 20pt;
      font-weight: bold;
      }	
    </style>
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
      <div class="row no-gutter">
        <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
        <div class="col-md-8 col-lg-6">
          <div class="login d-flex align-items-center py-5">
            <div class="container">
              <div class="row">
                <div class="col-md-9 col-lg-8 mx-auto">
                  <h3 class="mb-5">Welcome back!</h3>
                  <form action="JDBC_LOGIN" method="GET">
                    <div class="form-label-group">
                      <input type="text" name="username" id="username" class="form-control" placeholder="Username" required autofocus>
                      <label for="username">Username</label>
                    </div>
                    <div class="form-label-group">
                      <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
                      <label for="inputPassword">Password</label>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Login</button>
                  </form>
                  <div class="mes">
                    <%String mes = (String)request.getAttribute("message"); %>
                    <%if (mes != null) { %>
                    <%=mes%>
                    <% } %>
                  </div>
                </div>
              </div>
            </div>
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
    <body>
  </body>
</html>