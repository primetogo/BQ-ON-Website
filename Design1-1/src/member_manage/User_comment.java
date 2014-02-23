package member_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

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
			String sql1 = "insert into comment (cus_name, comment, address) values('"+name+"','"+comment+"','"+adr+"')";
			comment_get = conn.prepareStatement(sql1);
			comment_get.executeQuery();
			comment_get.close();
			response.sendRedirect("suc_comment.jsp");
		}catch(SQLException e){
			System.out.println(e);
		}
	}

}
