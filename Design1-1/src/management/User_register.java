package member.management;

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
	private PreparedStatement insert_member, insert_customer, check_member, getid;
	private boolean flag = true;
	private ResultSet max;
	private int id;
       
    public User_register() {super();}
  
    public void init() {conn = (Connection) getServletContext().getAttribute("connection");}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try{
    		boolean chet = true;
    		String first = request.getParameter("first");
    		String last = request.getParameter("last");
    		String pass = request.getParameter("pass");
    		String user = request.getParameter("user");
    		String email = request.getParameter("email");
    		String phone = request.getParameter("phone");
    		String adr = request.getParameter("adr");
    		String check = "select Cus_Fname, Cus_Lname from customer";
    		check_member = conn.prepareStatement(check);
    		ResultSet res = check_member.executeQuery();
    		while(res.next()){
    			if(first.equals(res.getString("Cus_Fname")) && last.equals(res.getString("Cus_Lname"))){
    				chet = false;
    			}
    		}
    		
    		System.out.println("Can register? => "+chet);
    		if(chet==true){
    		String customer_insert = "insert into customer (Cus_Fname, Cus_Lname, Cus_Address, Cus_Tel) values('"+first+"','"+last+"','"+adr+"','"+phone+"')";
    		String username_insert = "insert into username (username, email, password, role, Customer_Cus_id) values('"+user+"','"+email+"','"+pass+"','C',"+id+")";
    	    insert_customer = conn.prepareStatement(customer_insert);
    	    insert_customer.execute();
    	    insert_customer.close();
    	    insert_member = conn.prepareStatement(username_insert);
    	    insert_member.execute();
    	    insert_member.close();
    	    request.getSession().setAttribute("hi1", first);
    	    request.getSession().setAttribute("hi2", last);
    	    RequestDispatcher re = request.getRequestDispatcher("suc.jsp");
    	    re.forward(request, response);
    		}else{response.sendRedirect("reg_new.jsp");}
    	}catch(SQLException e){
    		System.out.println(e);
    	}
	}

}
