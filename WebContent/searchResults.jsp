
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <%String searchResult =(String)request.getAttribute("searchText");%> 
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
      <title>Results</title>
   </head>
   <body onload="Search()" >

   <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div id="results">

                </div>
            </div>
         </div>
   </div>

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
      		                    $('#results').append('<h5>We discovered ' + totalresults + ' results!</h5>');
      		                    // Itirate through the JSON array of 'businesses' which was returned by the API
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
      		                        //$('#results').append('<p><a href="DetailedNook.jsp?id=" + id  style="margin-top:50px;margin-bottom:50px;"><img src="' + image + '" style="width:200px;height:150px;"> </a></p> <br>We found <b>' + name + '</b> (' + alias + ')<br>Business ID: ' + id + '<br> Located at: ' + address + ' ' + city + ', ' + state + ' ' + zipcode + '<br>The phone number for this business is: ' + phone + '<br>This business has a rating of ' + rating + ' with ' + reviewcount + ' reviews.</div>');
      		                        $('#results').append('<p><a href="DetailedNook.jsp?id=" + id  style="margin-top:50px;margin-bottom:50px;"><img src="' + image + '" style="width:200px;height:150px;"> </a></p> <br>We found <b>' + name + '</b> (' + alias + ')<br>Business ID: ' + id + '<br> Located at: ' + address + ' ' + city + ', ' + state + ' ' + zipcode + '<br>The phone number for this business is: ' + phone + '<br>This business has a rating of ' + rating + ' with ' + reviewcount + ' reviews.</div>');
									'<p><a href="DetailedNook.jsp?id=' + id +'" + <img src="' + image + '" style="width:200px;height:150px;"> </a></p>'
						
      		                    });
      		                } else {
      		                    // If our results are 0; no businesses were returned by the JSON therefor we display on the page no results were found
      		                    $('#results').append('<h5>We discovered no results!</h5>');
      		                }
      		            }
      		 });      
      		
      	}
   	 	

      </script>
   </body>
</html>
