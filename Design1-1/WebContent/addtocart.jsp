<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
 <%@include file="config.jsp" %>
<jsp:useBean id="Food_reserve" class="model.Food_Cart" scope="session"/>
<%String food_id=request.getParameter("food_id");
	Class.forName(driver);
	Connection conn=DriverManager.getConnection(url, user, pass);
		Statement stmt=conn.createStatement();
		String sql="SELECT * from resnew.food where Food_id='" + food_id + "'";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			Food_reserve.addFood(rs.getString("Food_id"),rs.getString("Food_name"),1,rs.getInt("Food_price"));
		}
		response.sendRedirect("viewfood.jsp");
		%>