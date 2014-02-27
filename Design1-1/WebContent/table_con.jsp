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
PreparedStatement pstmt;
int cus_id=0;
String b=(String) session.getAttribute("first");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resnew", "root","root");
String sql="SELECT Cus_id from resnew.customer where Cus_Fname= ?";
pstmt=con.prepareStatement(sql);
pstmt.setString(1,b);
ResultSet rs=pstmt.executeQuery(sql);
while(rs.next()){
	cus_id = rs.getInt("Cus_id");
}
pstmt.close();
if(cart2.getTable().hasMoreElements()){
Enumeration e=cart2.getTable();
 while(e.hasMoreElements()){
	temp=(String[]) e.nextElement();
	pstmt = con.prepareStatement("UPDATE table set Table_status=? WHERE Table_id= ?");
	pstmt.setString(1, "YES");
	pstmt.setInt(2, Integer.parseInt(temp[0]));
	pstmt.execute();
	pstmt.close();
	pstmt = con.prepareStatement("INSERT INTO order_detail(table_table_id) values(?)");
	pstmt.setInt(1, Integer.parseInt(temp[0]));
	pstmt.execute();
	pstmt.close();}}

%>   


<%response.sendRedirect("Thank.jsp"); %>
</body>
</html>