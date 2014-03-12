package anthentication.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
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
    protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
    	Boolean loginflag = false, passcheck = false;
    	if(request.getSession().getAttribute("flag1")==null || request.getSession().getAttribute("flag1").equals(false)){
    	try{
    		//Get required data 
    		String user = request.getParameter("id");
    		String pass = request.getParameter("pass");
    		String sql_datacheck = "select Cus_id, username, password, Cus_Fname, Cus_Lname from resnew.username, resnew.customer where Customer_Cus_id=Cus_id AND username= "+"'"+user+"'"+"and password= "+"'"+pass+"'";
    		System.out.println("User input: Username = "+user+" Password = "+pass);
    		logincheck = conn.prepareStatement(sql_datacheck);
    		
    		//Get data from DB and checking process
    		ResultSet res = logincheck.executeQuery();
    		while(res.next()){
    			passcheck=true;
        		loginflag=true;
        		request.getSession().setAttribute("haha", res.getString("Cus_id"));
    			String first = res.getString("Cus_Fname");
    			String last = res.getString("Cus_Lname");
    			request.getSession().setAttribute("first", first);
    			request.getSession().setAttribute("last", last);	
    		}
    		res.close();
    	    logincheck.close();	
    	}catch(SQLException e){
    		System.out.print(e);
    	}
    	if(passcheck==false && passcheck!=null){request.getSession().setAttribute("mess", "102");}
    	request.getSession().setAttribute("flag1", loginflag);
 		response.sendRedirect("customer.jsp");}
    	else{RequestDispatcher rd = request.getRequestDispatcher("anthen.jsp");
		rd.forward(request, response);}}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		login(request, response);
	}

}
