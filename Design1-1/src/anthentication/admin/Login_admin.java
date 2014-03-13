package anthentication.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin")
public class Login_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement admin_login;
       
    public Login_admin() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean loginflag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		try{
			String sql_admin = "SELECT Emp_Fname, Emp_Lname, emp_id FROM employee, username WHERE username='"+name+"'and password= '"+password+"' and emp_id=employee_emp_id and role='A'";
			admin_login = conn.prepareStatement(sql_admin);
			ResultSet res = admin_login.executeQuery();
			while(res.next()){
				loginflag = true;
				request.getSession().setAttribute("admin_first", res.getString("Emp_Fname"));
				request.getSession().setAttribute("admin_last", res.getString("Emp_Lname"));
				request.getSession().setAttribute("admin_id", res.getString("emp_id"));
			}	
		}catch(Exception e){
			System.out.println(e);
		}
		request.getSession().setAttribute("admin", loginflag);
        response.sendRedirect("ad_dash.jsp");
	}

}
