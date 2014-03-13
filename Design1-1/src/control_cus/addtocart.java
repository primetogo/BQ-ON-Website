package control_cus;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Food_Cart;


@WebServlet("/addtocart")
public class addtocart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
    
    public addtocart() {super();}
    
    public void init() {con = (Connection) getServletContext().getAttribute("connection");}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Food_Cart cart=(Food_Cart) request.getSession().getAttribute("cart");
		String food_id=request.getParameter("food_id");
		Statement stmt;
		try {
			stmt = con.createStatement();
			String sql="SELECT * from food where Food_id=" + food_id;
			System.out.print(sql);
			ResultSet rs = stmt.executeQuery(sql);
	if(cart==null){
		cart=new  Food_Cart();
		request.getSession().setAttribute("cart", cart);
	}
	
			while(rs.next()){
				cart.addFood(rs.getString("Food_id"),rs.getString("Food_name"),1,rs.getString("Food_price"));
			}
			response.sendRedirect("viewfood.jsp");
		} catch (SQLException e) {
			System.out.println(e);
		}
				
	}
}
