<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Account - NookLook</title>
    <link rel="stylesheet" href="./css/Home.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
      $('#nookCarousel').carousel({
        interval: 10000
      })
      
      $('.carousel .carousel-item').each(function(){
          var minPerSlide = 3;
          var next = $(this).next();
          if (!next.length) {
          next = $(this).siblings(':first');
          }
          next.children(':first-child').clone().appendTo($(this));
          
          for (var i=0;i<minPerSlide;i++) {
              next=next.next();
              if (!next.length) {
              	next = $(this).siblings(':first');
            	}
              
              next.children(':first-child').clone().appendTo($(this));
            }
      });    
    </script>
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
    
    <!-- Account Main -->
    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-md-8 col-lg-6">
          <div class="d-flex align-items-center py-5">
            <div class="container">
              <!-- Welcome Message -->
              <div class="row">
                <div class="col-md-9 col-lg-8 mx-auto">
                  <div class="d-none d-md-flex col-md-4 col-lg-6">
                    <img src="img/account-avatar.png" class="img-fluid float-right" alt="Account">
                  </div>
                  <h2 class="mb-5">Welcome, _______ </h2>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Saved Nooks -->
    <div class="container my-3">
      <div class="row no-gutter">
        <h2 class="mb-5">Your Saved Nooks </h2>
        <div id="nookCarousel" class="carousel slide w-100" data-ride="carousel">
          <div class="carousel-inner w-100" role="listbox">
            <div class="carousel-item active">
              <div class="col-md-4">
                <div class="card card-body">
                  <img class="img-fluid" src="http://placehold.it/280x350?text=1">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="col-md-4">
                <div class="card card-body">
                  <img class="img-fluid" src="http://placehold.it/280x350?text=2">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="col-md-4">
                <div class="card card-body">
                  <img class="img-fluid" src="http://placehold.it/280x350?text=3">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="col-md-4">
                <div class="card card-body">
                  <img class="img-fluid" src="http://placehold.it/280x350?text=4">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="col-md-4">
                <div class="card card-body">
                  <img class="img-fluid" src="http://placehold.it/280x350?text=5">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="col-md-4">
                <div class="card card-body">
                  <img class="img-fluid" src="http://placehold.it/280x350?text=6">
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev w-auto" href="#nookCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon bg-dark border border-dark rounded-circle" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next w-auto" href="#nookCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon bg-dark border border-dark rounded-circle" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
    
    <!-- Preferences Form -->
    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-md-8 col-lg-6">
          <div class="login d-flex py-5">
            <div class="container">
              <div class="row">
                <div class="col-md-9 col-lg-8 mx-auto">
                  <h3 class="mb-5">Your Preferences</h3>
                  <form class="form-inline">
                    <div class="col-auto my-1">
                      <label class="my-1 mr-2" for="studyingTime">Studying Time</label>
                      <select class="custom-select my-1 mr-sm-2" id="studyingTime">
                        <option>Morning</option>
                        <option>Afternoon</option>
                        <option>Evening</option>
                        <option>24/7</option>
                      </select>
                    </div>
                    <div class="col-auto my-1">
                      <label class="my-1 mr-2" for="ambiance">Ambiance</label>
                      <select class="custom-select my-1 mr-sm-2" id="ambiance">
                        <option>Quiet</option>
                        <option>Casual</option>
                        <option>Medium</option>
                        <option>Luxury</option>
                      </select>
                    </div>
                    <div class="col-auto my-1">
                      <label class="my-1 mr-2" for="location">Location</label>
                      <select class="custom-select my-1 mr-sm-2" id="location">
                        <option>By Campus</option>
                        <option>Downtown</option>
                        <option>Residential</option>
                        <option>Outskirts</option>
                      </select>
                    </div>
                    <div class="col-auto my-1">
                      <label class="my-1 mr-2" for="amenities">Amenities</label>
                      <select class="custom-select my-1 mr-sm-2" id="amenities">
                        <option>Coffee</option>
                        <option>Food</option>
                        <option>Wi-Fi</option>
                        <option>24/7</option>
                      </select>
                    </div>
                    <div class="col-auto my-1">
                      <button type="submit" class="btn btn-primary text-uppercase font-weight-bold mb-2">Save</button>
                    </div>
                  </form>
                  
                  <!--  Alternate Vertical Form -->
                  <!-- <form>
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
                    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Save</button>
                    </form> -->
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
  </body>
</html>