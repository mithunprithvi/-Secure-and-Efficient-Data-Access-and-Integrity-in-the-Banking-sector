package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.MailBean;



/**
 * Servlet implementation class MailSend
 */
@WebServlet("/MailSend")
public class MailSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailSend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 
		String to=request.getParameter("name");
		System.out.println("usermail:"+to);
		
		String filekey=request.getParameter("filekey");
		System.out.println("keyyyyyyyyyyyyyyyyyyyyyyyyy"+filekey);


				String subject="Welcome From public Cloud storage";
				String from ="cloudsecure085@gmail.com";
				String[] mail_list={to};
				String body="your key is "+filekey;
				String pass="pearlsecurecloud";

				MailBean.sendFromGMail(from, pass, mail_list, subject, body);

		response.sendRedirect("Center.jsp");

		   
	}

}
