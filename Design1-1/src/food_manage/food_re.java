package food_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Food_Cart;

/**
 * Servlet implementation class food_re
 */
@WebServlet("/food_re")
public class food_re extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public food_re() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		run(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		run(request,response);
	}
	protected void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] food =request.getParameterValues("food");
		HttpSession session = request.getSession(true);
		Food_Cart fc =(Food_Cart) session.getAttribute("fc");
		if(fc == null) {
			ServletContext ctx = getServletContext();
			Connection conn = (Connection) ctx.getAttribute("connection");
			fc = new Food_Cart(conn);
			session.setAttribute("fc", fc);
			}
			for(int i = 0; i < food.length; i++) {
			fc.addFood(food[i]);
			System.out.print(food[i]);
			}
			fc = (Food_Cart) session.getAttribute("fc");
			RequestDispatcher pg = request.getRequestDispatcher("viewfood.jsp");
			pg.forward(request, response);
			}
		}
