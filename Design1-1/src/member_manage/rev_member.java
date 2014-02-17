package member_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/remove.do")
public class rev_member extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
    
    public rev_member() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   HttpSession session = request.getSession(false);
		try {
			Statement cot = conn.createStatement();
			String num = (String) request.getSession().getAttribute("stat");
			int foo = Integer.parseInt(num);
			String sql1 = "DELETE FROM customer, username WHERE Cus_id="+foo;
			cot.execute(sql1);
			session.invalidate();
			response.sendRedirect("index.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
