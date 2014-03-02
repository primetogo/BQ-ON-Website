package order_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/order_passing")
public class Order_record extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement orderIn, getOrderId, insertFood;
	private ResultSet or_id;
	private String id_in;
       
    public Order_record() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String get_table = request.getParameter("table");
		String cus_id = (String) request.getSession().getAttribute("cus_in");
		String admin_id = (String) request.getSession().getAttribute("admin_id");
		String[] all_food = request.getParameterValues("passing");
		String recording = "INSERT INTO order (Customer_Cus_id, employee_emp_id, table_Table_id, Order_status) VALUES("+cus_id+","+admin_id+","+get_table+",'w')";
		String get_or_id = "SELECT order_id FROM resnew.order WHERE Customer_Cus_id="+"'"+cus_id+"'";
		try {
			orderIn = conn.prepareStatement(recording);
			orderIn.execute();
			getOrderId = conn.prepareStatement(get_or_id);
			or_id = getOrderId.executeQuery();
			while(or_id.next()){
				id_in = or_id.getString("order_order_id");
			}
			for(int i=0; i < all_food.length; i++){
				String insert_food = "INSERT INTO order_detail (order_order_id, Food_Food_id) VALUES('"+id_in+"','"+all_food[i]+"')";
				insertFood=conn.prepareStatement(insert_food);
				insertFood.execute();
			}
			orderIn.close();
			getOrderId.close();
			insertFood.close();
		request.getSession().setAttribute("incoming", "Order inserted!");
		response.sendRedirect("ad_dash.jsp");
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
