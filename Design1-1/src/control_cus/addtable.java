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
import model.Table_cart;

@WebServlet("/addtable")
public class addtable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Connection con;
   
    public addtable() {super();}
    
    public void init() {con = (Connection) getServletContext().getAttribute("connection");}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Table_cart cart2=(Table_cart) request.getSession().getAttribute("cart2");
		String table_id=request.getParameter("table_id");
		Statement stmt;
		try {
			stmt = con.createStatement();
			if(cart2==null){
				cart2=new  Table_cart();
					
				}
			request.getSession().setAttribute("cart2", cart2);
			String sql="SELECT * from resnew.table where Table_id=" + table_id;
			ResultSet rs = stmt.executeQuery(sql);
			System.out.print(sql);
			while(rs.next()){
				cart2.addTable(table_id, rs.getString("Zone"),rs.getString("Table_Status"));
			}
				response.sendRedirect("viewtable.jsp");
			}
		 catch (SQLException e) {
			System.out.println(e);
		}
		
	}
}
