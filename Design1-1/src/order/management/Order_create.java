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


@WebServlet("/neworder")
public class Order_create extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement forid, getid, user;
	private ResultSet ge, des;
	private String cus_in;
	private boolean check=true;
       
    
    public Order_create() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String outer_first = request.getParameter("outer_first");
		String outer_last = request.getParameter("outer_last");
		String seat = request.getParameter("seat_check");
		String zone = request.getParameter("zone_check");
		String check_cus = "SELECT Cus_Fname, Cus_Lname FROM resnew.customer";		
		String sql_forid = "INSERT INTO customer (Cus_Fname, Cus_Lname) VALUES('"+outer_first+"','"+outer_last+"')";
		String sql_getid = "SELECT Cus_id FROM resnew.customer WHERE Cus_Fname="+"'"+outer_first+"'"+" AND "+"Cus_Lname="+"'"+outer_last+"'";
		try {
			user=conn.prepareStatement(check_cus);
			des = user.executeQuery();
			while(des.next()){
				if(outer_first.equals(des.getString("Cus_Fname")) && outer_last.equals(des.getString("Cus_Lname"))){ 
					check=false;	
			}}
			if(check==true){
			forid = conn.prepareStatement(sql_forid);
			forid.execute();
			forid.close();}
			
			getid = conn.prepareStatement(sql_getid);
			ge = getid.executeQuery();
			while(ge.next()){
				cus_in = ge.getString("Cus_id");
			}
			getid.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("Seat amount: "+seat);
		System.out.println("Customer ID: "+cus_in);
		request.getSession().setAttribute("cus_in", cus_in);
		request.getSession().setAttribute("seat_in", seat);
		request.getSession().setAttribute("zone_in", zone);
		response.sendRedirect("emp_typese.jsp");
		
	}

}
