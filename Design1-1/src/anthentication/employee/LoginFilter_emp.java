package anthentication.employee;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter("/emp_dash.jsp")
public class LoginFilter_emp implements Filter {

    public LoginFilter_emp() {}


	public void destroy() {}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession ses = req.getSession();
		Boolean flag = (Boolean) ses.getAttribute("emp");
		boolean loginFlag=false;
		if (flag == null) {
			loginFlag = false;
		} else {
			loginFlag = flag;
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
			res.sendRedirect("emp_anthen.jsp");
			return;
		}
		chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
