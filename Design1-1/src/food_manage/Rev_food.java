package food_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/removefood")
public class Rev_food extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement revv;
       
    
    public Rev_food() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String[] we = request.getParameterValues("im");
			if(we!=null){
			for(int i=0; i<we.length;i++){
				String sql_rev = "DELETE FROM `resnew`.`food` WHERE `Food_id`="+"'"+we[i]+"'";
				revv=conn.prepareStatement(sql_rev);
				revv.execute();
			}
			request.getSession().setAttribute("incoming", "Food Removed!");}
			response.sendRedirect("ad_dash.jsp");
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
