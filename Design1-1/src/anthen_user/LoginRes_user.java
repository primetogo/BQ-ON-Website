package anthen_user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginRes_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement logincheck = null;
	
    public LoginRes_user() {super();}
    
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
   
    /* This login function need to check username, password from DB 
     * and also check for user state (offline or online) */
    protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException{
    	if(request.getSession().getAttribute("flag1")==null || request.getSession().getAttribute("flag1").equals(false)){
    	Boolean loginflag = false, passcheck=false;
    	try{
    		//Get required data 
    		String user = request.getParameter("id");
    		String pass = request.getParameter("pass");
    		String sql_datacheck = "select password, Cus_Fname, Cus_Lname from username join customer on (Customer_Cus_id = Cus_id) where username= "+"'"+user+"'";
    		logincheck = conn.prepareStatement(sql_datacheck);
    		
    		//Get data from DB and checking process
    		ResultSet res = logincheck.executeQuery();
    		while(res.next()){
    			if(pass.equals(res.getString("password"))){
    				System.out.println(res.getString("password"));
    				//Send some user data to customer.jsp
    				request.getSession().setAttribute("first", res.getString("Cus_Fname"));
    				request.getSession().setAttribute("last", res.getString("Cus_Lname"));
    				loginflag = true;
    			}
    			else{passcheck = false;}
    		}
    		res.close();
    	    logincheck.close();
    		if(passcheck==false && passcheck!=null){
    			request.getSession().setAttribute("mess", "102");
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
