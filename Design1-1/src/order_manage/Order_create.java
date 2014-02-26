package order_manage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/neworder")
public class Order_create extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Order_create() {super();}
    
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String outer_first = request.getParameter("outer_first");
		String outer_last = request.getParameter("outer_last");
		String seat = request.getParameter("seat_check");
		String zone = request.getParameter("zone_check");
		
		request.getSession().setAttribute("cus_name1", outer_first);
		request.getSession().setAttribute("cus_name2", outer_last);
		request.getSession().setAttribute("se", seat);
		request.getSession().setAttribute("zo", zone);
		RequestDispatcher re = request.getRequestDispatcher("se_food.jsp");
		re.forward(request, response);
		
	}

}
