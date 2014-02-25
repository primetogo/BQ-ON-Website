package order_manage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ordermanage")
public class Order_management extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Order_management() {super();}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String quest = request.getParameter("comm");
		request.getSession().setAttribute("order", quest);
		RequestDispatcher re = request.getRequestDispatcher("f_p.jsp");
		re.forward(request, response);
	}

}
