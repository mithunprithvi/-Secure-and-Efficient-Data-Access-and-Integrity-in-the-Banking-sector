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

import bean.B1regbean;


/**
 * Servlet implementation class B1log
 */
@WebServlet("/B1log")
public class B1log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B1log() {
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


        String ooname=request.getParameter("Email");
		HttpSession ses = request.getSession(true);
		ses.setAttribute("Email", ooname);
		
		String email=request.getParameter("Email");
		System.out.println("Email:"+email);
		
		String pswd=request.getParameter("Password");
		System.out.println("Password:"+pswd);
		
		B1regbean tr=new B1regbean();
	    tr.setEmail(ooname);
	    tr.setPassword(pswd);
		
		Inter ll=new Imple();
		boolean l=ll.tlog(tr);
		if(l==true)
		{
			response.sendRedirect("B1main.jsp");
		}
		else
		{
			response.sendRedirect("404-1.jsp");
		}
	}

}
