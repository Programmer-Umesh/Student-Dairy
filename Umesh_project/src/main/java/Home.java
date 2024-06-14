
import jakarta.servlet.ServletException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/Home")
public class Home extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//@WebServlet("/Home")

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().println("Welcome to services method");

		String u = request.getParameter("uname");
		String p = request.getParameter("pass");

		 HttpSession s = request.getSession(true);
			s.setAttribute("user",u);
			request.setAttribute("user", u);
		// String user;
		 
		// PrintWriter
		//Sresponse.getWriter().println(s.getAttribute("user"));
		try {

			// driver register
			Class.forName("com.mysql.cj.jdbc.Driver");

			// establish connection
			Connection Con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_page", "root", "umesh");

			// statement
			Statement stmt = Con.createStatement();

			// execute
			ResultSet rs = stmt
					.executeQuery("select * from signup_page where User_Name='" + u + "' and Password='" + p + "'");
			
			 if(rs.next()) { response.getWriter().println("Welcome to services method");
			 
			 //logic of check valid user or not
			//response.encodeRedirectURL("Home");
			  
			  RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			  rd.forward(request, response);
			  }
			 else 
			 {
			  response.getWriter().println("Welcome  method"); RequestDispatcher rd1 =
			  request.getRequestDispatcher("Login.html"); //rd1.include(request, response);
			 rd1.forward(request, response); }
			   
			
			// close connection

			Con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

//		    } catch ( Exception e) {
//			// TODO Auto-generated catch block
//		    	response.getWriter().println("exception");
//			 
//			}

//PreparedStatement stmt=Con.prepareStatement("insert into signup1 values("+name+","+uname+","+pass+","+email+","+mobile+","+gender+","+date1+","+c1+","+class1+","+dep+","+hsc+","+ssc+","+addr+","+nan+","+state+","+dis+","+bno+","+wno+","+fname+","+bname+","+fmobile+","+photo+","+resume+","+friendname+")");