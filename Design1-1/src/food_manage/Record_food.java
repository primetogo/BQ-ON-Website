package food_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addfood")
public class Record_food extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement more;
       
    
    public Record_food() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name =  request.getParameter("food_name");
		String price = request.getParameter("food_price");
		String type = request.getParameter("blah");
		String sql_insert= "INSERT INTO `resnew`.`food` (`Food_id`, `Food_name`, `Food_price`, `Food_type`) VALUES ('"+0+"','"+name+"','"+price+"','"+type+"')";
		try {
			more = conn.prepareStatement(sql_insert);
			more.execute();
			more.close();
			request.getSession().setAttribute("incoming", "Food Added!");
			response.sendRedirect("ad_dash.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}
		
	}

}
