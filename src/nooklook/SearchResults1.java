package nooklook;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

@WebServlet("/SearchResults1")
public class SearchResults1 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void service (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			
			String apiKey = "Bearer 9AT3wXWC46od8RO8dLTcyqYqCAggcCaI4II48ud5gPbyLx8iV1AAcl0PYimSELAVLc1RjZhpOJCjLAfyVT9ScUK2adMvTkjeN5_hczeHpzsgd-K6mVReGEly0HvYXXYx";
			String searchText = request.getParameter("searchText").trim().replaceAll("\\s", "+");
			
			//String radioSelect = request.getParameter("radioSelect");
			//System.out.println(searchedRadio+"here");
			String myUrl = "";
			myUrl= "https://cors-anywhere.herokuapp.com/https://api.yelp.com/v3/businesses/search?term=study+spot&location=" + searchText;
			String jsonString = createJsonStringFromURL(myUrl);
			
			GsonBuilder builder = new GsonBuilder();
			builder.setPrettyPrinting();
			Gson gson = builder.create();
			
			Results results = gson.fromJson(jsonString, Results.class);
			String json = gson.toJson(results);
			
			request.setAttribute("data", json);
			session.setAttribute("data", json);
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/SearchResults.jsp");
	        dispatch.forward(request, response);
	        
	        
	        
		}
		catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	private String createJsonStringFromURL(String desiredUrl) throws Exception {
		URL url = null;
		BufferedReader reader = null;
		StringBuilder stringBuilder;
		
		try {
			url = new URL(desiredUrl);
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			connection.setRequestMethod("GET");
			connection.setReadTimeout(15*1000);
		    connection.connect();
		    
		    reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		    stringBuilder = new StringBuilder();
		    
		    String line = null;
		    while ((line = reader.readLine()) != null)
		    {
		    	stringBuilder.append(line + "\n");
		    }
			
		    return stringBuilder.toString();
		}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		finally {
			//close your reader!
			reader.close();
		}
	}
}

//class SearchResult {
//	private Item[] items;
//}
//
//class Item {
//	Spot spotInfo;
//}
//
//class Spot {
//	 var id;
//     var alias;
//     var phone;
//     var image;
//     var name;
//     var rating;
//     var reviewcount;
//     var address;
//     var city;
//     var state;
//     var zipcode;
//     
//     
//	
//}
//
//class Identifier {
//	String type;
//	String identifier;
//}
//
//class Image {
//	private String smallThumbnail, thumbnail;
//}