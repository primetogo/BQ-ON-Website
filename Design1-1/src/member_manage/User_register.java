package member_manage;

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



@WebServlet("/Addmem.do")
public class User_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	PreparedStatement insert_member, check_member;
       
    public User_register() {super();}
  
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try{
    		String check = "select Cus_Fname, Cus_Lname, username from username join customer on (Customer_Cus_id = Cus_id)";
    		String first = request.getParameter("first");
    		String last = request.getParameter("last");
    		String pass = request.getParameter("pass");
    		String user = request.getParameter("user");
    		String email = request.getParameter("email");
    		String phone = request.getParameter("phone");
    		String adr = request.getParameter("adr");
    		check_member = conn.prepareStatement(check);
    		ResultSet res = check_member.executeQuery();
    		while(res.next()){
    			String check1 = res.getString("Cus_Fname");
    			String check2 = res.getString("Cus_Lname");
    			String check3 = res.getString("username");
    			if(!check1.equals(first) && !check2.equals(last)){
    				String member_insert = "insert into username (Cus_Fname, Cus_Lname, Cus_Address, Cus_Tel, username, password, email) values('"+first+"','"+last+"','"+adr+"','"+phone+"','"+user+"','"+pass+"','"+email+"') join customer on (Customer_Cus_id = Cus_id)";
    	            insert_member = conn.prepareStatement(member_insert);
    	            insert_member.execute();
    	            insert_member.close();
    			}
    			else{RequestDispatcher rd = request.getRequestDispatcher("fail_reg.jsp");
    			     rd.forward(request, response);}
    		}
    	}catch(SQLException e){
    		System.out.println(e);
    	}
	}

}
