<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %> 
 <%@ page import ="javax.sql.*" %> 
<jsp:useBean id="cart2" class="model.Table_cart" scope="session"/>
<%String table_id=request.getParameter("table_id");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resnew", "root","123456");
	Statement stmt=con.createStatement();
		String sql="SELECT * from resnew.table where Table_id=" + table_id;
		ResultSet rs = stmt.executeQuery(sql);
		System.out.print(sql);
		while(rs.next()){
			cart2.addTable(table_id, rs.getString("Zone"),rs.getString("Table_Status"));
		}
		response.sendRedirect("viewtable.jsp");
		%>