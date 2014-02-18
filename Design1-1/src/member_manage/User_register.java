package member_manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Addmem.do")
public class User_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
       
    public User_register() {super();}
  
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try{
    		Statement stmt = conn.createStatement();
    		Statement stma = conn.createStatement();
    		Statement check1 = conn.createStatement();
    		Statement check2 = conn.createStatement();
    		String first = request.getParameter("first");
    		String last = request.getParameter("last");
    		String pass = request.getParameter("pass");
    		String user = request.getParameter("user");
    		String email = request.getParameter("email");
    		String phone = request.getParameter("phone");
    		String adr = request.getParameter("adr");
    		String sqlcheck1 = "select * from username";
    		String sqlcheck2 = "select * from customer";
    		ResultSet result1 = check1.executeQuery(sqlcheck1);
    		ResultSet result2 = check2.executeQuery(sqlcheck2);
            while(result1.next()){
            	while(result2.next()){
            		String Fname = result2.getString("Cus_Fname");
            		String Lname = result2.getString("Cus_Lname");
            		if(Fname.equals(first) && Lname.equals(last)){
            			response.sendRedirect("fail_reg.jsp");
            		}
            		else{
            			String sql1 = "insert into username (username, email, password, role, status) values('"+ user +"','"+ email +"','" + pass + "','"+'C'+"','"+"offline"+"')";
                		String sql2 = "insert into customer (Cus_Fname, Cus_Lname, Cus_Address, Cus_Tel) values('"+first+"','"+last+"','"+adr+"','"+phone+"')";
                		stmt.executeUpdate(sql1);
                		stma.executeUpdate(sql2);
                		request.getSession().setAttribute("hi1", first);
                		request.getSession().setAttribute("hi2", last);
                		response.sendRedirect("suc.jsp");
            		}
            	}
            }	
    	}catch(Exception e){
    		System.out.println(e);
    	}
	}

}
