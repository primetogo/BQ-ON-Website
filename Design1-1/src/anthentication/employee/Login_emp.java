package anthentication.employee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/empge")
public class Login_emp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement get;
	private ResultSet res;
       
    
    public Login_emp() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean loginflag = false;
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		String sql_emp ="SELECT Emp_Fname, Emp_Lname, emp_id FROM employee, username WHERE username='"+name+"' AND password='"+password+"' AND role='A' OR role='E'";
		
		try {
			get=conn.prepareStatement(sql_emp);
			res = get.executeQuery();
			while(res.next()){
				loginflag = true;
				request.getSession().setAttribute("emp_first1", res.getString("Emp_Fname"));
				request.getSession().setAttribute("emp_last1", res.getString("Emp_Lname"));
				request.getSession().setAttribute("emp_id1", res.getString("emp_id"));
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		request.getSession().setAttribute("emp", loginflag);
        response.sendRedirect("emp_dash.jsp");
		
	}

}
