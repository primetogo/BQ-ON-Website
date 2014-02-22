package member_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/remove.do")
public class User_remover extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement remove;
       
    
    public User_remover() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   HttpSession session = request.getSession(false);
		try {			
			String userF = (String) session.getAttribute("first");
		    String userL = (String) session.getAttribute("last");
		    
		    //starting query data to check with user data attribute
		    String remove_sql = "delete from from username join customer on (Customer_Cus_id = Cus_id) where Cus_Fname="+"'"+userF+"'"+"and Cus_Lname="+"'"+userL+"'";
		    remove = conn.prepareStatement(remove_sql);
		    remove.execute();
		    remove.close();
		    session.invalidate();
			response.sendRedirect("index.jsp");
		} catch (SQLException e) {
			System.out.println(e);
			response.sendRedirect("customer.jsp");
		}
	}
}
