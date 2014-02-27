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
String cus_id=null;
String sql2=null;
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resnew", "root","root");
Statement stmt=con.createStatement();
String sql="SELECT Cus_id from resnew.customer where Cus_Fname=" + session.getAttribute("first") ;
ResultSet rs = stmt.executeQuery(sql);
System.out.print(sql);
while(rs.next()){
	cus_id=rs.getString("Cus_id");
}
rs.close();
if(cart2.getTable().hasMoreElements()){
Enumeration e=cart2.getTable();
 while(e.hasMoreElements()){
	temp=(String[]) e.nextElement();
	%>   
<%sql="UPDATE resnew.table SET Table_status='YES' where Table_id="+temp[0]; 
stmt.execute(sql);
sql2="Insert INTO order (Table_id,Cus_id) values('"+temp[0]+","+cus_id+")";
stmt.execute(sql2);}}%>

<%response.sendRedirect("menu.jsp"); %>
</body>
</html>