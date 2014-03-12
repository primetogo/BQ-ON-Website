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


@WebServlet("/rea")
public class Order_ready extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement ready;
       
    public Order_ready() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] quest=request.getParameterValues("yelly");
		if(quest!=null){
		try{
			for(int i = 0; i<quest.length; i++){
				String sql_check ="UPDATE `resnew`.`order` SET `Order_status`='Ready' WHERE `order_id`="+"'"+quest[i]+"'";
				ready=conn.prepareStatement(sql_check);
				ready.execute();
			}
			if(request.getSession().getAttribute("admin_id")!=null){
				request.getSession().setAttribute("incoming", "Order ready!");
				response.sendRedirect("ad_dash.jsp");}
				else if(request.getSession().getAttribute("emp_id")!=null){
					request.getSession().setAttribute("incoming1", "Order ready!");
					response.sendRedirect("emp_dash.jsp");}
		}catch(SQLException e){
			System.out.println(e);
		}}else{if(request.getSession().getAttribute("admin_id")!=null){
			response.sendRedirect("ad_dash.jsp");}
			else if(request.getSession().getAttribute("emp_id")!=null){
				response.sendRedirect("emp_dash.jsp");}}
	}

}
