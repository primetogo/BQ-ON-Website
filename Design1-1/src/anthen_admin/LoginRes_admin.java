package anthen_admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	PreparedStatement admin_login;
       
    public LoginRes_admin() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean loginflag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		try{
			String sql_admin = "select Emp_Fname, Emp_Lname from employee where username='"+name+"'and password= '"+password+"'";
			admin_login = conn.prepareStatement(sql_admin);
			ResultSet res = admin_login.executeQuery();
			while(res.next()){
				request.getSession().setAttribute("admin_first", res.getString("Emp_Fname"));
				request.getSession().setAttribute("Emp_Lname", res.getString("Emp_Lname"));
			}
			loginflag = true;
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		request.getSession().setAttribute("admin", loginflag);
 		response.sendRedirect("/sec_ad/ad_dash.jsp");
	}

}
