package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.B2regbean;

/**
 * Servlet implementation class B2log
 */
@WebServlet("/B2log")
public class B2log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B2log() {
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


		String ooname=request.getParameter("email");
		HttpSession ses = request.getSession(true);
		ses.setAttribute("Email", ooname);
		 
		String email=request.getParameter("email");
		System.out.println("Email:"+email);
		
		String pswd=request.getParameter("password");
		System.out.println("Password:"+pswd);
		
		B2regbean tr=new B2regbean();
	    tr.setEmail(ooname);
	    tr.setPassword(pswd);
		
		Inter ll=new Imple();
		boolean l=ll.vlog(tr);
		if(l==true)
		{
			response.sendRedirect("B2main.jsp");
		}
		else
		{
			response.sendRedirect("404-1.jsp");
		}
		
	}

}
