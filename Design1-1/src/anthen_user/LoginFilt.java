package anthen_user;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;


@WebFilter("/customer.jsp")
public class LoginFilt implements Filter {
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
			System.out.println("Login possible: "+flag);
		}
		if (!loginFlag) {
			/* clean up all alive session attribute
			 * (session.invalidate()) 
			 * and send user back to login page, 
			 * if fail or in case of re-login with
			 * another user online */
			HttpServletResponse res = (HttpServletResponse) response;
			HttpSession session = ((HttpServletRequest) request).getSession(false);
			session.invalidate();
			res.sendRedirect("anthen.jsp");
			return;
		}
	    chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
