package anthen_admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/admingo")
public class Logout_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
 
    public Logout_admin() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		try{
		if(session != null){
			String ID = (String) request.getSession().getAttribute("admin_id");
			Statement out1 = conn.createStatement();
			String sql = "update manager set status='offline' where mgr_id="+ID;
			out1.executeUpdate(sql);
			System.out.println("Logout process: Cleared all session...");
		    session.invalidate();
		request.getRequestDispatcher("ad_sec.jsp").forward(request,response);}}
		catch(Exception e){
			System.out.print(e);
		}
	}

}
