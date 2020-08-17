package myservlet;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
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
		// TODO Auto-generated method stub
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String address = request.getParameter("address");
			String contact = request.getParameter("contact");
			
			if (first_name != null && last_name != null && username != null &&  password != null && address != null && contact != null) {
				
				RegisterBean log = new RegisterBean();
				
				log.setFirst_name(first_name);
				log.setLast_name(last_name);
				log.setUsername(username);
				log.setPassword(password);
				log.setAddress(address);
				log.setContact(contact);
				
				HttpSession session = request.getSession();
				session.setAttribute("log", log);
				
				boolean status = log.isValid();
				
				if(status) {
					RequestDispatcher dispatch = request.getRequestDispatcher("Register2.jsp");
					dispatch.forward(request, response);
				}else{
					RequestDispatcher dispatch = request.getRequestDispatcher("Register1.jsp");
					dispatch.forward(request, response);
				}
			}
		
	}

}
