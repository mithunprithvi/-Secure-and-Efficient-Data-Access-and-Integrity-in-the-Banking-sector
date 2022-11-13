package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.B2regbean;

/**
 * Servlet implementation class B2reg
 */
@WebServlet("/B2reg")
public class B2reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B2reg() {
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


		 String bnk=request.getParameter("bank");
		   System.out.println("Bank Name: "+bnk);
		   
		   String bch=request.getParameter("branch");
		   System.out.println("Branch Name: "+bch);
		  
		  String email=request.getParameter("Email");
		  System.out.println("Email: "+email);
		  
		  String num=request.getParameter("Number");
		  System.out.println("Mobile number: "+num);
		  
		  String pass=request.getParameter("Password");
		  System.out.println("Password: "+pass);
		  
		  String cpass=request.getParameter("Cpassword");
		  System.out.println("Con password: "+cpass);
		  
		  B2regbean t=new B2regbean();
		  t.setBankname(bnk);
		  t.setBranchname(bch);
		  t.setEmail(email);
		  t.setNumber(num);
		  t.setPassword(pass);
		  t.setConpassword(cpass);
		  
		  Inter r=new Imple();
		  int m=r.vreg(t);
		 if(m==1)
		 {
			 response.sendRedirect("B2log.jsp");
		 }
		 else
		 {
			 response.sendRedirect("Error"); 
		 }
		  

	}

}
