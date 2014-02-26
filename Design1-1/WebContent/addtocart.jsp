<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<jsp:useBean id="cart" class="model.Food_Cart" scope="session"/>
<%String food_id=request.getParameter("food_id");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resnew", "root","root");
Statement stmt=con.createStatement();
		String sql="SELECT * from food where Food_id=" + food_id;
		System.out.print(sql);
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			cart.addFood(rs.getString("Food_id"),rs.getString("Food_name"),1,rs.getString("Food_price"));
		}
		response.sendRedirect("viewfood.jsp");
		%>