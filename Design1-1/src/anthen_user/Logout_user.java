package anthen_user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout")
public class Logout_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Logout_user() {super();}
    
    
	/* This logout function using for clean up all session attribute that still alive 
	 * also update user status to offline state */	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		try{
		if(session != null){
			System.out.println("Logout process: Cleared all session...");
			System.out.println("");
		    session.invalidate();
		    response.sendRedirect("customer.jsp");
		    }}
		catch(Exception e){
			System.out.print(e);
		}
	}

}
