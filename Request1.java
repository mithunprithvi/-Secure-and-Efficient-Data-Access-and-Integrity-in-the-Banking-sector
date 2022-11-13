package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Uploadbean;
import implement.Imple;
import interfase.Inter;

/**
 * Servlet implementation class Request1
 */
@WebServlet("/Request1")
public class Request1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Request1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String br=request.getParameter("brname");
		System.out.println("Branch Name: "+br);	
		
		String fname=request.getParameter("filename");
		System.out.println("File Name: "+fname);	
		
		String ftype=request.getParameter("filetype");
		System.out.println("Filename"+ftype);
		
		String fkey=request.getParameter("filekey");
		System.out.println("Key"+fkey);
		
		String n1=request.getParameter("name1");
		System.out.println("Oname"+n1);
		
		Uploadbean rq=new Uploadbean();
	    rq.setBranch(br);
	    rq.setFilename(fname);
	    rq.setFiletype(ftype);
	    rq.setFilekey(fkey);
	    rq.setFileowner(n1);
		
		Inter jj=new Imple();
		int w=jj.reqq(rq);
		if(w==1)
		{
			response.sendRedirect("Reqsendsuccess1.jsp");
		}
		else
		{
			response.sendRedirect("Fnf.jsp");
		}
		
	}

}
