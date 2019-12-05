<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <%String searchResult =(String)request.getAttribute("searchText");%> 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/SearchResults.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <title>Search Results - NookLook</title>
  </head>
  <body onload="Search()" >
  
    <!--- Header --->
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
    
    <!--- Search Results --->
    <div class="container">
     <div class="row">
      	<div id="results"></div>
     </div>
    </div>
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <h4 class="m-0 font-weight-bold text-white text-center">Copyright &copy; Dream Team 2019</h4>
      </div>
    </footer>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
    
    <script>
      function Search(){
      	//console.log("hehe"); 
      	      	 var search =  "<%=searchResult%>";
      	      	 console.log(search); 
      	         var myurl = "https://cors-anywhere.herokuapp.com/https://api.yelp.com/v3/businesses/search?term=study+spots&location=" + search;
      
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
      	                console.log(JSON.stringify(data));
      	                // If our results are greater than 0, continue
      	                if (totalresults > 0){
      	                    // Display a header on the page with the number of results
      	                    $('#results').append('<h2 class="mb-5">We discovered ' + totalresults + ' results!</h2>');
      	                    // Iterate through the JSON array of 'businesses' which was returned by the API
      	                    $.each(data.businesses, function(i, item) {
      	                        // Store each business's object in a variable
      	                        var id = item.id;
      	                        var alias = item.alias;
      	                        var phone = item.display_phone;
      	                        var image = item.image_url;
      	                        var name = item.name;
      	                        var rating = item.rating;
      	                        var reviewcount = item.review_count;
      	                        var address = item.location.address1;
      	                        var city = item.location.city;
      	                        var state = item.location.state;
      	                        var zipcode = item.location.zip_code;

      	                        // Append our result into our page
      	                        
      	                      	// $('#results').append('<table><tr><td rowspan="4"><b><a href="DetailedNook.jsp?id=' + id + ' " ' + 'style="font-size:24px;color:#343A40;">' + name + '</a></b><br><a href="DetailedNook.jsp?id=' + id + ' " ' + 'style="margin-top:30px;margin-bottom:0px"></div><img style="height: 250px; width: 250px;" src="' + image + '" style="width:400px;height:300px;margin-top:20px;margin-bottom:0px"></a></td><td>&nbsp</td></tr><tr><td>&nbsp<b> Address: </b>' + address + ' ' + city + ', ' + state + ' ' + zipcode + '</td></tr><tr><td>&nbsp<b>Phone Number: </b>' + phone + '</td></tr><tr><td>&nbsp<b>Rating: </b>' + rating + ' (' + reviewcount + ' reviews)</td><td><button onclick="addNook(' + id + ',' + id + ')' class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Favorite</button></td></tr></table>');
      	                      	$('#results').append('<table><tr><td rowspan="4"><b><a href="DetailedNook.jsp?id=" + id  style="font-size:24px;color:#343A40;">' + name + '</a></b><br><br><a href="DetailedNook.jsp?id=' + id + ' " ' + 'style="margin-top:50px;margin-bottom:50px;"></div><img style="height: 250px; width: 250px;" src="' + image + '" style="width:400px;height:300px;margin-top:20px;margin-bottom:0px"></a></td><td>&nbsp</td></tr><tr><td>&nbsp<b> Address: </b>' + address + ' ' + city + ', ' + state + ' ' + zipcode + '</td></tr><tr><td>&nbsp<b>Phone Number: </b>' + phone + '</td></tr><tr><td>&nbsp<b>Rating: </b>' + rating + ' (' + reviewcount + ' reviews)</td></tr></table>');
      	                      
      	                      	$('#results').append('<br><hr />');
        	                      //$('#results').append('<table><tr><td rowspan="4"><b><a href="DetailedNook.jsp?id=" + id  style="font-size:24px;color:#343A40;">' + name + '</a></b></td><b><a href="DetailedNook.jsp?id=' + id + ' " ' + 'style="margin-top:50px;margin-bottom:50px;"><img src="' + image + '" style="width:200px;height:150px;"></a></td><td>&nbsp</td></tr><tr><td><b>We found <b>' + name + '</b>' + '<br> Located at: ' + address + ' ' + city + ', ' + state + ' ' + zipcode + '<br>The phone number for this business is: ' + phone + '<br>This business has a rating of ' + rating + ' with ' + reviewcount + ' reviews.</div>');
      	                    });
      	                    
      	                } else {
      	                    // If our results are 0; no businesses were returned by the JSON therefore we display on the page no results were found
      	                    $('#results').append('<h5>We discovered no results!</h5>');
      	                }
      	            }
      	 });      
      	
      }
    </script>
  </body>
</html>