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

@WebServlet("/final")
public class Record_new_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement record, getid;
	private String ID;
       
    public Record_new_order() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("se_food.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String seat = (String)request.getSession().getAttribute("seeat");
		String zone = (String)request.getSession().getAttribute("zo");
		String empid = (String)request.getSession().getAttribute("admin_id");
		
		String outer_first = (String)request.getSession().getAttribute("firstt");
		String outer_last = (String)request.getSession().getAttribute("lastt");
		
		String sql_checkid = "SELECT Cus_id FROM customer WHERE Cus_Fname="+"'"+outer_first+"'"+"AND Cus_Lname="+"'"+outer_last+"'";
		
		try {
			getid=conn.prepareStatement(sql_checkid);
			ResultSet ress = getid.executeQuery();
			while(ress.next()){
				ID = ress.getString("Cus_id");
			}
			ress.close();
			
			System.out.println("Cus ID: "+ID+" Table ID: "+seat);
			String sql_checkin = "INSERT INTO `resnew`.`order` (`Customer_Cus_id`, `employee_emp_id`, `table_Table_id`, `Order_status`) VALUES ('"+ID+"','"+empid+"','"+seat+"','IQ')";
			record=conn.prepareStatement(sql_checkin);
			record.execute();
			record.close();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
	}

}
