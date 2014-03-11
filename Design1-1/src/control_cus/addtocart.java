package control_cus;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Food_Cart;

/**
 * Servlet implementation class addtocart
 */
@WebServlet("/addtocart")
public class addtocart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtocart() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() {con = (Connection) getServletContext().getAttribute("connection");}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}
}
