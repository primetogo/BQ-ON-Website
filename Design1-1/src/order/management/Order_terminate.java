package order.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/orderter")
public class Order_terminate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement del;
       
   
    public Order_terminate() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("ad_dash.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] quest = request.getParameterValues("cheese");
		if(quest!=null){
		try {
			for(int i=0; i<quest.length;i++){
				String sql_del = "UPDATE `resnew`.`order` SET `Order_status`='Cancled' WHERE `order_id`="+"'"+quest[i]+"'";
				del=conn.prepareStatement(sql_del);
				del.execute();
			}
			request.getSession().setAttribute("incoming", "Order cancle!");
			response.sendRedirect("ad_dash.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}}else{response.sendRedirect("ad_dash.jsp");}
	}

}
