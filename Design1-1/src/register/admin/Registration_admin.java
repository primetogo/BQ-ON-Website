package register.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/newbie")
public class Registration_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement newb, newa;
       
   
    public Registration_admin() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("ad_dash.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID = request.getParameter("ad_id");
		String emp_fname = request.getParameter("ad_fname");
		String emp_lname = request.getParameter("ad_lname");
		String sex = request.getParameter("sex");
		String address = request.getParameter("ad_adr");
		String mail = request.getParameter("ad_mail");
		String user = request.getParameter("ad_user");
		String pass = request.getParameter("ad_pass");
		String tel = request.getParameter("ad_tel");
		
		String sql_in = "INSERT INTO employee (emp_id, Emp_Fname, Emp_Lname, Emp_sex, Emp_Address, Emp_Tel, Emp_Email, emp_Mgr_id) VALUES('"+ID+"','"+emp_fname+"','"+emp_lname+"','"+sex+"','"+address+"','"+tel+"','"+mail+"','"+ID+"')";
		String sql_in2 = "INSERT INTO username (username, password, role, employee_emp_id) VALUES('"+user+"','"+pass+"','"+ID+"')";
		try {
			newb=conn.prepareStatement(sql_in);
			newb.execute();
			newb.close();
			request.getSession().setAttribute("incoming", "New admin added!");
			response.sendRedirect("ad_dash.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
