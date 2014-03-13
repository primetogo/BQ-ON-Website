<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="sun.security.provider.certpath.OCSP.RevocationStatus"%>
<%@page import="model.Food_Cart"%>
<%@page import="java.util.Enumeration"%>
<jsp:useBean id="cart" class="model.Food_Cart" scope="session"/>
<%String[] temp;
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/resnew","root","123456");
PreparedStatement pstmt,pstmt1,pq,pb;
String b=(String) session.getAttribute("first");
String pay_type=request.getParameter("pay_type");
System.out.print(pay_type);
Class.forName("com.mysql.jdbc.Driver");
int cus_id=0;
String order_id="";
int sum=0;
int amount =0;
String sql="SELECT Cus_id from resnew.customer where Cus_Fname='"+b+"'";
pq=con.prepareStatement(sql);
ResultSet rs=pq.executeQuery();
while(rs.next()){
	cus_id = rs.getInt("Cus_id");
}
String lol="SELECT MAX(Order_id)  as ab  From resnew.order where Customer_Cus_id ='"+cus_id+"'";
pb=con.prepareStatement(lol);
ResultSet rs2=pb.executeQuery();
while(rs2.next()){
	order_id=rs2.getString(1);
}
if(cart.getItem().hasMoreElements()){
	Enumeration enu =cart.getItem();
	 while(enu.hasMoreElements()){
		temp=(String[]) enu.nextElement();
		sum=Integer.parseInt(temp[2])*Integer.parseInt(temp[3]);
		amount+=sum;}
	 
}
Enumeration enu =cart.getItem();
while(enu.hasMoreElements()){
	temp=(String[]) enu.nextElement();
	pstmt = con.prepareStatement("Insert Into order_detail(order_order_id,Food_amount,Food_Food_id) values('"+order_id+"','"+temp[2]+"','"+Integer.parseInt(temp[0])+"')");
	pstmt.execute();
	pstmt.close();}
pstmt1 = con.prepareStatement("Insert Into payment(Payment_amount,Payment_type,pay_id) values("+amount +",'"+pay_type+"',"+order_id+")");
pstmt1.execute();
pstmt1.close();
cart.close();
response.sendRedirect("Thankyou.jsp");
%>
