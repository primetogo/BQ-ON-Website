package anthen_admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin_sec")
public class LoginRes_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
    public LoginRes_admin() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean loginflag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		try{

			request.getSession().setAttribute("admin", loginflag);
     		response.sendRedirect("ad_dash.jsp");
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
