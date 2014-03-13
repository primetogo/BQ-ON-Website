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
	private PreparedStatement del1, del2, del3, del4;
       
   
    public Order_terminate() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] quest = request.getParameterValues("cheese");
		if(quest!=null){
		try {
			for(int i=0; i<quest.length;i++){
				String sql_revdetail = "DELETE FROM resnew.order_detail WHERE order_order_id="+quest[i];
				String sql_revpay = "DELETE FROM resnew.payment WHERE idPayment="+quest[i];
				String sql_revorder = "DELETE FROM resnew.order WHERE order_id="+quest[i];
				del1=conn.prepareStatement(sql_revdetail);
				del2=conn.prepareStatement(sql_revpay);
				del2=conn.prepareStatement(sql_revorder);
				del1.execute();
				del2.execute();
				del3.execute();
			}
			if(request.getSession().getAttribute("admin_id")!=null){
				request.getSession().setAttribute("incoming", "Order cancled!");
				response.sendRedirect("ad_dash.jsp");}
				else if(request.getSession().getAttribute("emp_id")!=null){
					request.getSession().setAttribute("incoming1", "Order cancled!");
					response.sendRedirect("emp_dash.jsp");}
		} catch (SQLException e) {
			System.out.println(e);
		}}else{if(request.getSession().getAttribute("admin_id")!=null){
			response.sendRedirect("ad_dash.jsp");}
			else if(request.getSession().getAttribute("emp_id")!=null){
				response.sendRedirect("emp_dash.jsp");}}
	}

}
