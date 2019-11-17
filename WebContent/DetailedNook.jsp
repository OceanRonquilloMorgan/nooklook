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
    
    <!--  Detailed Nook -->
    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-md-8 col-lg-6">
          <div class="d-flex align-items-center py-5">
            <div class="container">
              <div class="row">
                <div class="col-md-9 col-lg-8 mx-auto">
                  <h2 class="mb-5">Nook ______</h2>
                  <div class="d-none d-md-flex col-md-4 col-lg-6">
                    <img src="http://via.placeholder.com/300" class="img-fluid float-right" alt="Account">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="d-none d-md-flex col-md-4 col-lg-6">
          <h5 class="mb-5">Rating:</h5>
          <h5 class="mb-5">Address:</h5>
          <h5 class="mb-5">Phone Number:</h5>
          <h5 class="mb-5">Type:</h5>
          <h5 class="mb-5">Website:</h5>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row no-gutter">
        <div class="col-md-8 col-lg-6">
          <div class="d-flex align-items-center py-5">
            <div class="container">
              <!-- Welcome Message -->
              <div class="row">
                <div class="col-md-9 col-lg-8 mx-auto">
                  <div class="container my-3">
                    <div class="row no-gutter">
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