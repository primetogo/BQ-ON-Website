package payment.emp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/paid")
public class Payment_paid extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement pay, del1, del2, del3;
       
    public Payment_paid() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int order = Integer.parseInt(request.getParameter("uu"));
		String sql_paid = "UPDATE resnew.payment SET payment_status='Paid' WHERE idPayment="+order;
		String sql_revdetail = "DELETE FROM resnew.order_detail WHERE order_order_id="+order;
		String sql_revpay = "DELETE FROM resnew.payment WHERE idPayment="+order;
		String sql_revorder = "DELETE FROM resnew.order WHERE order_id="+order;
		try {
			pay=conn.prepareStatement(sql_paid);
			pay.execute();
			pay.close();
			
			del1=conn.prepareStatement(sql_revdetail);
			del1.execute();
			del1.close();
			
			del3=conn.prepareStatement(sql_revpay);
			del3.execute();
			del3.close();
			
			del2=conn.prepareStatement(sql_revorder);
			del2.execute();
			del2.close();
			request.getSession().setAttribute("incoming1", "Payment completed!");
			response.sendRedirect("emp_dash.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
