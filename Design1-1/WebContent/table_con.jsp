<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Enumeration"%>
<%@page import="model.Table_cart"%>
 <%@ page import ="java.sql.*" %> 
 <%@ page import ="javax.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Table Confirm</title>
</head>
<body>
<jsp:useBean id="cart2" class="model.Table_cart" scope="session"/>
<%String[] temp;
PreparedStatement pstmt1,pstmt2,pstmt3;
int cus_id=0;
String b=(String) session.getAttribute("first");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resnew", "root","root");
String sql="SELECT Cus_id from resnew.customer where Cus_Fname='"+b+"'";
pstmt1=con.prepareStatement(sql);
ResultSet rs=pstmt1.executeQuery();
while(rs.next()){
	cus_id = rs.getInt("Cus_id");
}
pstmt1.close();
if(cart2.getTable().hasMoreElements()){
Enumeration e=cart2.getTable();
 while(e.hasMoreElements()){
	temp=(String[]) e.nextElement();
	pstmt2 = con.prepareStatement("UPDATE resnew.table set Table_status='"+"YES"+"'"+"WHERE Table_id="+temp[0]);
	pstmt2.execute();
	pstmt2.close();
	pstmt3 = con.prepareStatement("INSERT INTO resnew.order (table_Table_id,Customer_Cus_id,Order_status) values("+temp[0]+","+cus_id+",'"+"w"+"')");
	pstmt3.execute();
	pstmt3.close();}}
cart2.close();
%>   


<%response.sendRedirect("Thank.jsp"); %>
