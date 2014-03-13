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
	private PreparedStatement orderIn, getid, insertFood, price, upprice, table_in;
	private ResultSet aa, bb; 
	private int orderxd, foodamount=1;
	private float total;
	private String id;
	
    public Order_record() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int get_table = Integer.parseInt(request.getParameter("table"));
		int cus_id = Integer.parseInt((String) request.getSession().getAttribute("cus_in"));
		String pay = request.getParameter("payment");
		if(request.getSession().getAttribute("admin_id")!=null){
			id = (String) request.getSession().getAttribute("admin_id");
		}else if(request.getSession().getAttribute("emp_id")!=null){
			id = (String) request.getSession().getAttribute("emp_id");
		}
		String[] all_food = request.getParameterValues("passing");
		String recording = "INSERT INTO resnew.order (Customer_Cus_id, employee_emp_id, table_Table_id) VALUES("+cus_id+", '"+id+"',"+get_table+")";
		String sql_id = "SELECT order_id FROM resnew.order WHERE Customer_Cus_id="+cus_id;
		try {
			orderIn = conn.prepareStatement(recording);
			getid=conn.prepareStatement(sql_id);
			orderIn.execute();
			aa = getid.executeQuery();
			while(aa.next()){orderxd=aa.getInt("order_id");}
			for(int i=0;i<all_food.length;i++){
				String getfood = "INSERT INTO resnew.order_detail (order_order_id, Food_amount, Food_Food_id) VALUES('"+orderxd+"',"+foodamount+",'"+all_food[i]+"')";
				insertFood=conn.prepareStatement(getfood);
				insertFood.execute();
				}
			for(int j=0; j<all_food.length;j++){
				String sql_price = "SELECT Food_price, Food_amount FROM resnew.order, resnew.order_detail, resnew.food WHERE Food_id="+all_food[j];
				price=conn.prepareStatement(sql_price);
				bb = price.executeQuery();
			}
			while(bb.next()){int n1 = bb.getInt("Food_price");
				int n2 = bb.getInt("Food_amount");
				total = total + (n1*n2);
			}
			String sql_plus = "INSERT INTO resnew.payment (Payment_amount, Payment_type, Pay_id) VALUES("+total+",'"+pay+"', "+orderxd+")";
			upprice=conn.prepareStatement(sql_plus);
			upprice.execute();
			orderIn.close();
			insertFood.close();
			getid.close();
			
			String sql_res = "UPDATE resnew.table SET Table_Status='Reserved' WHERE Table_id="+String.valueOf(get_table);
			table_in=conn.prepareStatement(sql_res);
			table_in.execute();
			table_in.close();
			
			request.getSession().setAttribute("incoming1", "Order inserted!");
			response.sendRedirect("emp_dash.jsp");		
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
