package anthen_emp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/empge")
public class LoginRes_emp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement get;
       
    
    public LoginRes_emp() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean loginflag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		String sql_emp ="" ;
	}

}
