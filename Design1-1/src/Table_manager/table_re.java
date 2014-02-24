package Table_manager;

import java.io.IOException;
import java.io.PrintWriter;
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

import model.Table_cart;

/**
 * Servlet implementation class table_re
 */
@WebServlet("/table_re")
public class table_re extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public table_re() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() {
    	conn = (Connection)getServletContext().getAttribute("connection");
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
		String[] table =request.getParameterValues("table_id");
		HttpSession session = request.getSession(true);
		Table_cart tc =(Table_cart) session.getAttribute("tc");
		if(tc == null) {
			ServletContext ctx = getServletContext();
			Connection conn = (Connection) ctx.getAttribute("connection");
			tc = new Table_cart(conn);
			session.setAttribute("tc", tc);
			}
			for(int i = 0; i < table.length; i++) {
			tc.addTable(table[i]);
			}
			tc = (Table_cart) session.getAttribute("tc");
			RequestDispatcher pg = request.getRequestDispatcher("menu.jsp");
			pg.forward(request, response);
			}
		}

