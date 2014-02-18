package anthen_user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginRes_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	
    public LoginRes_user() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
   
    /* This login function need to check username, password from DB 
     * and also check for user state (offline or online) */
    protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException{
    	if(request.getSession().getAttribute("flag1")==null){
    	boolean loginflag = false;
    	try{
    		Statement stmt = conn.createStatement();
    		Statement stma = conn.createStatement();
    		Statement stat = conn.createStatement();
    		String sql1 = "select * from username";
    		String sql2 = "select * from customer";
    		String usr = request.getParameter("id");
    		String pwd = request.getParameter("pass");
    		String x = null;
    		String y = null;
    		System.out.println("User: "+usr+" Password: "+pwd);
    		ResultSet res = stmt.executeQuery(sql1), sht = stma.executeQuery(sql2);    		
    		while(res.next()){
    			System.out.println("From DB Username: "+res.getString("username")+" Password: "+res.getString("password"));
    			if(usr.equals(res.getString("username")) && pwd.equals(res.getString("password")) && res.getString("status").equals("offline")){
    				loginflag=true;
                    x = res.getString("Cus_id");
                    while(sht.next()){
            			y = sht.getString("Cus_id");
            			if(x.equals(y)){
            				request.getSession().setAttribute("first", sht.getString("Cus_Fname"));
            				request.getSession().setAttribute("last", sht.getString("Cus_Lname"));
            				stat.executeUpdate("update username set status='online' where Cus_id="+x); 
            				request.getSession().setAttribute("stat", x);
            			}
    			}      
    		}
    		}
    		request.getSession().setAttribute("flag1", loginflag);
     		response.sendRedirect("customer.jsp");
    	}catch(Exception e){
    		System.out.print(e);
    	}}
    	else{response.sendRedirect("anthen_cus.html");}
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		login(request, response);
	}

}
