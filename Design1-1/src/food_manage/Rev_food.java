package food_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/remove_food")
public class Rev_food extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
    
    public Rev_food() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String gee = request.getParameter("hh");
			if(gee!=null){
				request.getSession().setAttribute("set", gee);
			}else{
				String id = request.getParameter("name_des");
				Statement stmt = conn.createStatement();
				String sql1 = "delete from food where Food_id="+id;
				stmt.execute(sql1);
				response.sendRedirect("ad_dash.jsp");
			}
			
			
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
