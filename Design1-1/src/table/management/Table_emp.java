package table.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/setfree")
public class Table_emp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement set;
       
    public Table_emp() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] table = request.getParameterValues("clr");
		
		for(int i=0; i< table.length; i++){
			String tablee = "UPDATE resnew.table SET Table_Status='Available' WHERE Table_id="+table[i];
			try {
				set=conn.prepareStatement(tablee);
				set.execute();
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
		request.getSession().setAttribute("incoming1", "Cleared table!");
		response.sendRedirect("emp_dash.jsp");
	}

}
