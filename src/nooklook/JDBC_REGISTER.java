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
 * Servlet implementation class Test
 */
@WebServlet("/JDBC_REGISTER")
public class JDBC_REGISTER extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static final String CREDENTIALS_STRING = "jdbc:mysql://google/MEMBERS?cloudSqlInstance=lab-7-201:us-central1:lab8instance&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=ptkaster&password=gitlitcommit";      
	static Connection connection = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC_REGISTER() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(CREDENTIALS_STRING);
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		
		SQL_UTILITY_NOOKLOOK.initConnection();
		String name = request.getParameter("username");

		String pw1 = request.getParameter("password1");
		System.out.println(name);
		System.out.println(pw1);
		
		String message = "";
		String next = "";
		
		if (SQL_UTILITY_NOOKLOOK.getUID(name) == -1) { //username not currently in database i.e. unique
			SQL_UTILITY_NOOKLOOK.addUser(name, pw1);
			next = "/Preferences.jsp";
			
			HttpSession session = request.getSession();
			session.setAttribute("sessname", name);
		}
		else if (SQL_UTILITY_NOOKLOOK.getUID(name) != -1) {
			message += "This username is already taken.";
			next = "/Register.jsp";
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
