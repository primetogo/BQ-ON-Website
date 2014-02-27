package order_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/neworder")
public class Order_create extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement forid;
       
    
    public Order_create() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String outer_first = request.getParameter("outer_first");
		String outer_last = request.getParameter("outer_last");
		String seat = request.getParameter("seat_check");
		String zone = request.getParameter("zone_check");
		String sql_forid = "INSERT INTO customer (Cus_Fname, Cus_Lname) VALUES('"+outer_first+"','"+outer_last+"')";
		try {
			forid = conn.prepareStatement(sql_forid);
			forid.execute();
			forid.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		request.getSession().setAttribute("firstt", outer_first);
		request.getSession().setAttribute("lastt", outer_last);
		request.getSession().setAttribute("se", seat);
		request.getSession().setAttribute("zo", zone);
		RequestDispatcher re = request.getRequestDispatcher("se_food.jsp");
		re.forward(request, response);
		
	}

}
