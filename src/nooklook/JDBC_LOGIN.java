package nooklook;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class JDBC_LOGIN
 */
@WebServlet("/JDBC_LOGIN")
public class JDBC_LOGIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String CREDENTIALS_STRING = "jdbc:mysql://google/lab7?cloudSqlInstance=lab-7-201:us-central1:lab8instance&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=ptkaster&password=gitlitcommit";     
	static Connection connection = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC_LOGIN() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(CREDENTIALS_STRING);
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		
		SQL_UTILITY_NOOKLOOK.initConnection();
		String name = request.getParameter("username");

		String pw = request.getParameter("password");
		
		String message = "";
		String next = "";
		
		if (SQL_UTILITY_NOOKLOOK.getUID_PID(name, pw) != -1) { //User and password match - successful login
			next = "/Home.jsp";
			
			HttpSession session = request.getSession();
			session.setAttribute("sessname", name);
		}
		else if (SQL_UTILITY_NOOKLOOK.getUID(name) == -1) {	//User not in database
			message += "The user does not exist.";
			next = "/Login.jsp";
		}
		else if (SQL_UTILITY_NOOKLOOK.getUID(name) != -1 && SQL_UTILITY_NOOKLOOK.getUID_PID(name, pw) == -1) {	//User in database, but user and password don't match
			message += "Incorrect password.";
			next = "/Login.jsp";			
		}

		request.setAttribute("message", message);
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(next);
		try {
			dispatch.forward(request,response);
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		catch (ServletException e) {
			e.printStackTrace();
		}
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
