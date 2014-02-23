package anthen_user;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;


@WebFilter("/customer.jsp")
public class LoginFilter_user implements Filter {
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession ses = req.getSession();
		Boolean flag = (Boolean) ses.getAttribute("flag1");
		boolean loginFlag=false;
		if (flag == null) {
			loginFlag = false;
		} else {
			loginFlag = flag;
	        System.out.println("--------------------------");
			System.out.println("User Login possible: "+flag);
			System.out.println("--------------------------");
			System.out.println(" ");
		}
		if (!loginFlag) {
			/* clean up all alive session attribute
			 * (session.invalidate()) 
			 * and send user back to login page, 
			 * if fail or in case of re-login with
			 * another user online */
			RequestDispatcher rd = request.getRequestDispatcher("anthen.jsp");
			rd.forward(request, response);
			return;
		}
	    chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
