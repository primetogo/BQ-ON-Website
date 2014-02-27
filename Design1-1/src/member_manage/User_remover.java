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
	PreparedStatement remove, shit;
       
    
    public User_remover() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   HttpSession session = request.getSession(false);
		try {			
			String userF = (String) session.getAttribute("first");
		    String userL = (String) session.getAttribute("last");
		    String id = (String) session.getAttribute("haha");
		    
		    //starting query data to check with user data attribute
		    String another = "DELETE * FROM resnew.customer WHERE Cus_id="+"'"+id+"'";
		    String remove_sql = "DELETE * FROM resnew.username WHERE Customer_Cus_id="+"'"+id+"'";
		    shit=conn.prepareStatement(another);
		    remove = conn.prepareStatement(remove_sql);
		    shit.execute();
		    shit.close();  
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
