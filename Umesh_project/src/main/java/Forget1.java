

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class Forget1
 */
public class Forget1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forget1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u=request.getParameter("uname");
		String p=request.getParameter("pass");
		
	try {
			
			//driver register
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			
			//establish connection
			Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login_page","root","umesh");
			 
			
			//statement
			Statement stmt=Con.createStatement(); 
			
			 
			 
			
			//execute
			ResultSet rs=stmt.executeQuery("select * from signup_page where User_Name='"+u+"' and friend_name='"+p+"'");
			if(rs.next())  
			{
				response.getWriter().println("Welcome to services method");
				
				// logic of check valid user or not
				
					RequestDispatcher rd = request.getRequestDispatcher("Home.html");
					rd.forward(request, response);
			}
				else
				{
					response.getWriter().println("Welcome  method");
					
					RequestDispatcher rd1 = request.getRequestDispatcher("forgot1.html");
					//rd1.include(request, response);
					rd1.forward(request, response);	
				}
				
			
			  
			
			//close connection
			
				Con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
