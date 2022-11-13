package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Uploadbean;

/**
 * Servlet implementation class Fileaccept
 */
@WebServlet("/Fileaccept")
public class Fileaccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileaccept() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String file=request.getParameter("fname");
		System.out.println("Filename: "+file);
		
		String type=request.getParameter("ftype");
		System.out.println("Filetype:"+type);
		
		String key=request.getParameter("key");
		System.out.println("Key:"+key);
		
		Uploadbean rp=new Uploadbean();
		rp.setFilename(file);
		rp.setFiletype(type);
		rp.setFilekey(key);
		
		Inter jj=new Imple();
		int w=jj.rep(rp);
		if(w==1)
		{
			response.sendRedirect("Acceptsuccess.jsp");
		}
		else
		{
			response.sendRedirect("Fnf.jsp");
		}
	}

}
