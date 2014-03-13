package anthentication.employee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/empgo")
public class Logout_emp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Logout_emp() {super();}
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		try{
		if(session != null){
		    session.invalidate();
		response.sendRedirect("emp_anthen.jsp");}}
		catch(Exception e){
			System.out.print(e);
		}
	}

}
