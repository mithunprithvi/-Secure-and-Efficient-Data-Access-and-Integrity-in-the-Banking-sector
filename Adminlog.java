package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Adminlog
 */
@WebServlet("/Adminlog")
public class Adminlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminlog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		  String username=request.getParameter("name");
		  System.out.println("Username"+username);
		  
		  String password=request.getParameter("password");
		  System.out.println("Password"+password);
		  
		  if(username.equals("Admin") && password.equals("Admin"))
		  {
			  response.sendRedirect("Adminmain.jsp");
		  }
		  else
		  {
			  response.sendRedirect("404.jsp");
		  }
		  
	}

}
