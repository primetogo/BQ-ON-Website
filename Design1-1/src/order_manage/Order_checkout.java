package order_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/order_check")
public class Order_checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement check;
       
   
    public Order_checkout() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String quest = request.getParameter("butter");
		String sql_check ="UPDATE `resnew`.`order` SET `Order_status`='F' WHERE `order_id`="+"'"+quest+"'";
		try {
			check=conn.prepareStatement(sql_check);
			check.execute();
			check.close();
			response.sendRedirect("ad_dash.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
