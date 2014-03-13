package member.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/comment.do")
public class User_comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement comment_get;
       
    
    public User_comment() {super();}
    
    public void init(){conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			
			String name = request.getParameter("cus_name");
			String comment = request.getParameter("cus_comment");
			String adr = request.getParameter("cus_adr");
			String sql1 = "INSERT INTO comment (cus_name, comment, address) VALUES('"+name+"','"+comment+"','"+adr+"')";
			comment_get = conn.prepareStatement(sql1);
			comment_get.executeQuery();
			comment_get.close();
			RequestDispatcher rd = request.getRequestDispatcher("suc_comment.jsp");
		    rd.forward(request, response);
		}catch(SQLException e){
			System.out.println(e);
		}
	}

}
