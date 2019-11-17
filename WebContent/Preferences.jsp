<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Preferences - NookLook</title>
    <link rel="stylesheet" href="./css/Preferences.css">
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
          <a class="nav-item nav-link" href="Account.jsp">Account</a>
        </li>
        <li class="nav-item">
          <a class="nav-item nav-link" href="Home.jsp">Sign Out</a>
        </li>
      </ul>
    </nav>
    
    <!-- Preferences Form -->
    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-md-8 col-lg-6">
          <div class="login d-flex align-items-center py-5">
            <div class="container">
              <div class="row">
                <div class="col-md-9 col-lg-8 mx-auto">
                  <h3 class="mb-5">Your Preferences</h3>
                  <form>
                    <div class="form-group">
				      <label for="studyingTime">Studying Time</label>
					    <select class="form-control" id="studyingTime">
					      <option>Morning</option>
					      <option>Afternoon</option>
					      <option>Evening</option>
					      <option>24/7</option>
					  </select>
					</div>
                    <div class="form-group">
				      <label for="ambiance">Ambiance</label>
					    <select class="form-control" id="ambiance">
					      <option>Quiet</option>
					      <option>Casual</option>
					      <option>Medium</option>
					      <option>Luxury</option>
					  </select>
					</div>
					<div class="form-group">
				      <label for="location">Location</label>
					    <select class="form-control" id="location">
					      <option>By Campus</option>
					      <option>Downtown</option>
					      <option>Residential</option>
					      <option>Outskirts</option>
					  </select>
					</div>
					<div class="form-group">
				      <label for="amenities">Amenities</label>
					    <select class="form-control" id="amenities">
					      <option>Coffee</option>
					      <option>Food</option>
					      <option>Wi-Fi</option>
					      <option>24/7</option>
					  </select>
					</div>
                    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Submit</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
      </div>
    </div>
    <body>
  </body>
</html>