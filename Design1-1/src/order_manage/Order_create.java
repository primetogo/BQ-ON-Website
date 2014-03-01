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
	private PreparedStatement forid, getid;
	private ResultSet ge;
	private String cus_in;
       
    
    public Order_create() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("se_food.jsp").forward(request, response);
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String outer_first = request.getParameter("outer_first");
		String outer_last = request.getParameter("outer_last");
		String seat = request.getParameter("seat_check");
		String zone = request.getParameter("zone_check");
		String sql_forid = "INSERT INTO customer (Cus_Fname, Cus_Lname) VALUES('"+outer_first+"','"+outer_last+"')";
		String sql_getid = "SELECT Cus_id FROM customer WHERE Cus_Fname="+"'"+outer_first+"AND Cus_Lname="+"'"+outer_last+"'";
		try {
			forid = conn.prepareStatement(sql_forid);
			getid = conn.prepareStatement(sql_getid);
			forid.execute();
			ge = getid.executeQuery();
			while(ge.next()){
				cus_in = ge.getString("Cus_id");
			}
			forid.close();
			getid.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("Seat amount:"+seat);
		request.getSession().setAttribute("cus_in", cus_in);
		RequestDispatcher re = request.getRequestDispatcher("ad_typese.jsp");
		re.forward(request, response);
		
	}

}
