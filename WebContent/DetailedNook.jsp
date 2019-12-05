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
      //getting the business ID
      var x = document.URL;
      console.log(x);
      var BusinessID = x.substring(x.indexOf("=") + 1);
       
    </script>
    <script>
      function Search(){
      	//console.log("hehe"); 
      	    var x = document.URL;
      console.log(x);
      var BusinessID = x.substring(x.indexOf("=") + 1);    		
      	      	 console.log(BusinessID); 
       var myurl = "https://cors-anywhere.herokuapp.com/https://api.yelp.com/v3/businesses/" + BusinessID;
       var myurl2 = "https://cors-anywhere.herokuapp.com/https://api.yelp.com/v3/businesses/" + BusinessID + "/" + "reviews";
      
      	         $.ajax({
      	            url: myurl,
      	            headers: {
      	             'Authorization':'Bearer 9AT3wXWC46od8RO8dLTcyqYqCAggcCaI4II48ud5gPbyLx8iV1AAcl0PYimSELAVLc1RjZhpOJCjLAfyVT9ScUK2adMvTkjeN5_hczeHpzsgd-K6mVReGEly0HvYXXYx',
      	         },
      	            method: 'GET',
      	            dataType: 'json',
      	            success: function(data){
      	                // Grab the results from the API JSON return
      	                var totalresults = data.total;
      	                console.log(totalresults);
      	                console.log(JSON.stringify(data));
      	                // If our results are greater than 0, continue
      	                //if (totalresults > 0){
      	                    // Display a header on the page with the number of results
      	                   
      	                       // Store each business's object in a variable
      	                        var id = data.id;
      	                        
      	                        var alias = data.alias;
      	                        console.log(alias);
      	                        var phone = data.display_phone;
      	                        var image = data.image_url;
      	                        var name = data.name;
      	                        var rating = data.rating;
      	                        console.log(rating);
      	                        var reviewcount = data.review_count;
      	                        var address = data.location.address1;
      	                        var city = data.location.city;
      	                        var state = data.location.state;
      	                        var zipcode = data.location.zip_code;
      	                       	console.log(id);
      	            			
      	                       	//test
      	                       console.log(data.photos[0]);
      	                       	var photo1 = data.photos[0]
      	                       	var photo2 = data.photos[1]
      	                       	var photo3 = data.photos[2]
      
      	                       	
      	                        $('#rating').append(rating); 
      	                        $('#addy').append(address);
      	                        $('#phone').append(phone);
      	                        $('#web').append(state);
      	                        $('#name').append(name);
      	                        $('#img').append('<img src="' + image + '" style="height: 250px; width: 250px;">');
      		
      	                        $('#img0').append('<img src="' + photo1 + '" class="img-fluid">');
      	                        $('#img1').append('<img src="' + photo2 + '" class="img-fluid">');
      	                        $('#img2').append('<img src="' + photo3 + '" class="img-fluid">');
      	                }
      	          });  
      	                
      	          $.ajax({
       		            url: myurl2,
       		            headers: {
       		             'Authorization':'Bearer 9AT3wXWC46od8RO8dLTcyqYqCAggcCaI4II48ud5gPbyLx8iV1AAcl0PYimSELAVLc1RjZhpOJCjLAfyVT9ScUK2adMvTkjeN5_hczeHpzsgd-K6mVReGEly0HvYXXYx',
       		         },
       		            method: 'GET',
       		            dataType: 'json',
       		            success: function(data){
       		                // Grab the results from the API JSON return
       		                var totalresults = data.total;
       		                console.log(totalresults);
       		                console.log(JSON.stringify(data));
       		                // If our results are greater than 0, continue
       		                //if (totalresults > 0){
       		                    // Display a header on the page with the number of results
       		                   
       		                       // Store each business's object in a variable
       		                        var id = data.id;
      			
       		                    	var reviewText = data.reviews[0].text;
       		                    	var profileUrl = data.reviews[0].user.profile_url;
       		                    	var imageUrl = data.reviews[0].image_url;
       		                    	var namePerson = data.reviews[0].user.name;
       		                    	console.log(name);
       		                    	var bussUrl = data.reviews[0].url;
       		                    	var ratingPerson = data.reviews[0].rating;
      
       		                    	
       		                    	//console.log(review);
       		                    	console.log(reviewText);
       		                       	
       		                        $('#reviewText').append(reviewText); 
       		                        $('#namePerson').append(namePerson); 
       		                        $('#ratingPerson').append(ratingPerson); 
       		                        $('#profileUrl').append('<a href="'+ profileUrl +'">Read More Here!</a>' ); 
       		            
       		            }     
      	 });      
      	
      }
    </script>
  </head>
  <body  onload="Search()">
    <!-- Header -->
    <%
      if (request.getParameterMap().containsKey("signoff")) {
      
       session.setAttribute("sessname", "");
      
      };
      
      // System.out.println(URL);
      
      %>
    <%
      if(session.getAttribute("sessname") == "" || session.getAttribute("sessname") == null){
      
      %>
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
    <%
      }
      
      else {
      
      %> 
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
          <a class="nav-item nav-link" href="Home.jsp?signoff=on" id="logOUT">Sign Out</a>
        </li>
      </ul>
    </nav>
    <%
      }
      
      %>
    <!--  Detailed Nook -->
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <br>
                    <br>
          <h2 id="name" class="mb-5" style="font-size:24px;color:#343A40;margin-left:30px;"></h2>
          <div id="img" class="d-none d-md-flex col-md-4 col-lg-6"  style = "padding-left: 30px;"></div>

          <br>
        </div>
        <div class="col">
          <br>
          <br>
          <h5 id="namePerson" class="mb-5">This nook was recently visited by: </h5>
          <h5 id="reviewText" class="mb-5">They said that: </h5>
          <h5 id="profileUrl" class="mb-5">You can read more about their experience here: </h5>
        </div>
        <div class="col">
          <br>
          <br>
          <h5 id="rating" class="mb-5">Rating: </h5>
          <h5 id="addy"  class="mb-5">Address: </h5>
          <h5 id="phone" class="mb-5">Phone Number: </h5>
        </div>
        

      </div>
    </div>
  </body>
</html>