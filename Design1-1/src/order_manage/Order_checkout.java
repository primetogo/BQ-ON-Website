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
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("ad_dash.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] quest = request.getParameterValues("butter");
		if(quest!=null){
		try {
			for(int i = 0; i<quest.length; i++){
				String sql_check ="UPDATE `resnew`.`order` SET `Order_status`='CK' WHERE `order_id`="+"'"+quest[i]+"'";
				check=conn.prepareStatement(sql_check);
				check.execute();
			}
			request.getSession().setAttribute("incoming", "Order cooking!");
			response.sendRedirect("ad_dash.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}}else{
			response.sendRedirect("ad_dash.jsp");
		}
	}

}
