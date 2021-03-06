package nooklook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SQL_UTILITY_NOOKLOOK {
	
	
	public static final String CREDENTIALS_STRING = "jdbc:mysql://google/MEMBERS?cloudSqlInstance=lab-7-201:us-central1:lab8instance&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=ptkaster&password=gitlitcommit";      
	static Connection connection;
	
	public static void initConnection () {
		if (connection != null) {
			System.out.println("[WARN] Connection has already been established.");
			return;
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIALS_STRING);
		} catch (Exception e) {
			e.printStackTrace(); 
		}
	}
	
	//ADD A USER TO THE DATABASE BY CALLING FUNCTION WITH THE USERNAME AND PASSWORD THAT THE USER WANTS TO REGISTER WITH
//	public static void addUser(String username, String password) {
//		try {
//			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Users(Username, PW) VALUES (?, ?)");
//			preparedStatement.setString(1, username);
//			preparedStatement.setString(2, password);
//			preparedStatement.execute();
//			preparedStatement.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

	public static void addUser(String username, String password)
	{    
	 Connection connection = null;
	   	java.sql.Statement st= null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(CREDENTIALS_STRING);
				st = connection.createStatement();
				st.executeUpdate("INSERT INTO Users(Username, PW) VALUES ('" + username + "', '" + password + "');"); 
				/* rs = st.executeQuery("SELECT * from Users where username = 'testuser'"); */
			}catch(Exception e){
				e.printStackTrace();
			}
	}

	
	//CALL FUNCTION WITH THE USERNAME OF A USER - RETURNS THE DATABASE USER ID OF USER (>=0). OTHERWISE, IF THERE IS NO USER WITH THAT USER ID, RETURNS -1
	public static int getUID(String username) {
		Connection connection = null;
	   	java.sql.Statement st= null;
	   	ResultSet rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(CREDENTIALS_STRING);
				st = connection.createStatement();
				rs = st.executeQuery("Select Users(Username, PW) VALUES ('" + username + "');"); 
				/* rs = st.executeQuery("SELECT * from Users where username = 'testuser'"); */
				while(rs.next()) {
					int userID = rs.getInt("UserID");
					return userID;
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		
		
		return -1;
	}

	//CALL FUNCTION WITH USERNAME AND PASSWORD OF USER - RETURNS USER ID IF A USER EXISTS WITH THAT USERNAME AND PASSWORD. OTHERWISE, RETURNS -1
	public static int getUID_PID(String username, String password) { //for login
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM Users WHERE Username=? AND PW=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet resultSet = ps.executeQuery();
			if (resultSet.next()) {
				int UID = resultSet.getInt("UserID");
				ps.close();
				resultSet.close();
				return UID;
			}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return -1;
		
		
	}
	
	
	//****	FOR NOOKS ****// 
	
	//GET THE FAVORITE NOOKS OF A USER - RETURNS AN ARRAYLIST CONTAINING THE STRINGS OF THE BUSINESS IDs OF THE FAVORITE NOOKS OF A USER.
	public String getBusinessID(String username) {
		String nooks = null ;
		
		Connection connection = null;
	   	java.sql.Statement st= null;
	   	ResultSet rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(CREDENTIALS_STRING);
				st = connection.createStatement();
				rs = st.executeQuery("Select Users(Username, PW) VALUES ('" + username + "');"); 
				/* rs = st.executeQuery("SELECT * from Users where username = 'testuser'"); */
				while(rs.next()) {
					String businessID = rs.getString("FavoriteNooks");
					nooks = businessID;
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		
		
		return nooks;
	}
	
	//CHECK IF USER HAS GIVEN NOOK/HAS ALREADY FAVORITED A NOOK: IF USER HAS NOOK, RETURNS userID (>=0). OTHERWISE, IF USER DOES NOT HAVE NOOK, RETURNS -1
	//CALL FUNCTION WITH USER ID AND BUSINESS ID STRING - GET USER ID USING getUID FUNCTION ABOVE
	public static int checkNook(int userID, String BusinessID) {	
		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM FavoriteNooks WHERE userID=? AND BusinessID=?");
			ps.setInt(1, userID);
			ps.setString(2, BusinessID);
			ResultSet resultSet = ps.executeQuery();
			if (resultSet.next()) {
				int UID = resultSet.getInt("userID");
				ps.close();
				resultSet.close();
				return UID;
			}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return -1;
	}

	//ADD A NOOK TO A USER'S FAVORITED NOOKS
	//CALL FUNCTION WITH USER IF AND BUSINESS ID STRING TO ADD THE NOOK WITH THAT BUSINESS ID TO A USER'S FAVORITED NOOKS
	public static void addNook(int userID, String BusinessID) { 
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO FavoriteNooks(userID, BusinessID) VALUES (?, ?)");
			preparedStatement.setInt(1, userID);
			preparedStatement.setString(2, BusinessID);
			preparedStatement.execute();
			preparedStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//REMOVE A NOOK FROM A USER'S FAVORTED NOOKS
	//CALL FUNCTION WITH USER ID AND BUSINESS ID STRING TO REMOVE THE NOOK WITH THAT BUSINESS ID FROM A USER'S FAVORITED NOOKS
	public static void removeNook(int userID, String BusinessID) { 
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM FavoriteNooks WHERE userID=? AND BusinessID=?");
			preparedStatement.setInt(1, userID);
			preparedStatement.setString(2, BusinessID);
			preparedStatement.execute();
			preparedStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
