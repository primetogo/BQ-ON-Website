package order.management;

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

@WebServlet("/portorder")
public class Order_record extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement orderIn, getid, insertFood;
	private ResultSet aa; 
	private int orderxd;
	
    public Order_record() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int get_table = Integer.parseInt(request.getParameter("table"));
		int cus_id = Integer.parseInt((String) request.getSession().getAttribute("cus_in"));
		String admin_id = (String) request.getSession().getAttribute("admin_id");
		String[] all_food = request.getParameterValues("passing");
		String recording = "INSERT INTO resnew.order (Customer_Cus_id, employee_emp_id, table_Table_id) VALUES("+cus_id+", '"+admin_id+"',"+get_table+")";
		String sql_id = "SELECT order_id FROM resnew.order WHERE Customer_Cus_id="+cus_id;
		try {
			orderIn = conn.prepareStatement(recording);
			getid=conn.prepareStatement(sql_id);
			orderIn.execute();
			aa = getid.executeQuery();
			while(aa.next()){orderxd=aa.getInt("order_id");}
			for(int i=0;i<all_food.length;i++){
				String getfood = "INSERT INTO resnew.order_detail (order_order_id, Food_Food_id) VALUES('"+orderxd+"','"+all_food[i]+"')";
				insertFood=conn.prepareStatement(getfood);
				insertFood.execute();}
			orderIn.close();
			insertFood.close();
			getid.close();
		request.getSession().setAttribute("incoming", "Order inserted!");
		response.sendRedirect("ad_dash.jsp");
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
