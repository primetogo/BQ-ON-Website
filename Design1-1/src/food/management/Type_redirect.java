package food.management;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/get_food")
public class Type_redirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Type_redirect() {super();}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String intern = request.getParameter("kindy");
		System.out.println(intern);
		request.getSession().setAttribute("typo", intern);
		RequestDispatcher re = request.getRequestDispatcher("f_p.jsp");
		re.forward(request, response);
	}

}
