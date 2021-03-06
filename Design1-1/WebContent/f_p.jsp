<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css" >
@font-face {
	font-family: 'RaiNgan';
	src: url('Res/RaiNgan.ttf'); /* IE9 Compat Modes */
	src: url('Res/RaiNgan.ttf') format('truetype'), /* IE6-IE8 */
	     url('Res/RaiNgan.ttf') format('truetype'), /* Modern Browsers */
	     url('Res/RaiNgan.ttf')  format('truetype'), /* Safari, Android, iOS */
	     url('Res/RaiNgan.ttf') format('truetype'); /* Legacy iOS */
	}
html, body {
   width: 100% ;
   height: 100% ;
   min-width: 900px ;
   min-height: 500px ;
}
#bg{
  background: url(Res/cloud.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
@charset 'UTF-8';
/* Some stylesheet reset */
.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #f5978e;
	-webkit-box-shadow:inset 0px 1px 0px 0px #f5978e;
	box-shadow:inset 0px 1px 0px 0px #f5978e;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f24537), color-stop(1, #c62d1f));
	background:-moz-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:-webkit-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:-o-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:-ms-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:linear-gradient(to bottom, #f24537 5%, #c62d1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f24537', endColorstr='#c62d1f',GradientType=0);
	background-color:#f24537;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	border:1px solid #d02718;
	height: 35px;
	width: 150px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:RaiNgan;
	font-size: 20px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #810e05;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c62d1f), color-stop(1, #f24537));
	background:-moz-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:-webkit-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:-o-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:-ms-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c62d1f', endColorstr='#f24537',GradientType=0);
	background-color:#c62d1f;
}
.myButton:active {
	position:relative;
	top:1px;
}

#inf_panel{
    height: 35px;
	width: 300px;
	font-family: RaiNgan;
	font-size: 30px;
 	background-color: #bdffb0;
	border: 2px solid #999999;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	-moz-box-shadow: 0px 0px 20px #000000;
	-webkit-box-shadow: 0px 0px 20px #000000;
	box-shadow: 0px 0px 20px #000000;
}
#text_table{
    height: auto;
	width: 250px;
    margin-top: 100px;
    font-family: RaiNgan;
    font-size: 40px;
    font-weight: bold;
    background-color: #CFF6DA;
	border: 2px solid #999999;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	-moz-box-shadow: 0px 0px 20px #000000;
	-webkit-box-shadow: 0px 0px 20px #000000;
	box-shadow: 0px 0px 20px #000000;
}
.firstButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #54a3f7;
	-webkit-box-shadow:inset 0px 1px 0px 0px #54a3f7;
	box-shadow:inset 0px 1px 0px 0px #54a3f7;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #007dc1), color-stop(1, #0061a7));
	background:-moz-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background:-webkit-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background:-o-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background:-ms-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background:linear-gradient(to bottom, #007dc1 5%, #0061a7 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#007dc1', endColorstr='#0061a7',GradientType=0);
	background-color:#007dc1;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	border:1px solid #124d77;
	display:inline-block;
	cursor:pointer;
	height: 35px;
	width: 150px;
	color:#ffffff;
	font-family:RaiNgan;
	font-size:25px;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #154682;
}
.firstButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0061a7), color-stop(1, #007dc1));
	background:-moz-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-webkit-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-o-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-ms-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:linear-gradient(to bottom, #0061a7 5%, #007dc1 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0061a7', endColorstr='#007dc1',GradientType=0);
	background-color:#0061a7;
}
.firstButton:active {
	position:relative;
	top:1px;
}

table, th, td
{
	width: auto;
	text-align: center;
    font-family: RaiNgan;
    font-size: 25px;
	border: 3px solid #E1BC24;	
	background-color: #6BE08C;
}

</style>
</head>
<body id="bg">    
	<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3307/resnew" user="root" password="123456" ></sql:setDataSource>
	<%if(request.getSession().getAttribute("typo").equals("Appetizer")){ %>
		<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='Appetizer';
		</sql:query>
    <%}else if(request.getSession().getAttribute("typo").equals("dessert")){%>
    	<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='dessert';
		</sql:query>
    <%}else if(request.getSession().getAttribute("typo").equals("Donburi")){%>
    	<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='Donburi';
		</sql:query>
    <%}else if(request.getSession().getAttribute("typo").equals("drink")){%>
    	<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='drink';
		</sql:query>
    <%}else if(request.getSession().getAttribute("typo").equals("noodle")){%>
    	<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='noodle';
		</sql:query>
    <%}else if(request.getSession().getAttribute("typo").equals("Set menu")){%>
    	<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='Set menu';
		</sql:query>
    <%}else if(request.getSession().getAttribute("typo").equals("sushi")){%>
    	<sql:query dataSource="${ds}" var="res">
			select Food_name, Food_price, Food_id from resnew.food where Food_type='sushi';
		</sql:query>
    <%}%>
    <div align="center">
		<br>
		<div id="text_table">Type: <%= session.getAttribute("typo") %></div>
			<form action="removefood" method="post"><br>
				<table border="1" width="80%" align="center">
					<tr>
						<td><b>Food name</b></td>
						<td><b>Food price</b></td>
						<td><b>Remove</b></td>
					</tr>
					<c:forEach var="ggx" items="${res.rows}">
						<tr>
							<td><c:out value="${ggx.Food_name}" /></td>
							<td><c:out value="${ggx.Food_price}" /></td>
							<td><input type="checkbox" name="im" value="${ggx.Food_id}" /></td>
						</tr>
					</c:forEach>
				</table>
				<br>
				<input type="submit" value="Process!" class="myButton" width="50%"/>
			</form><br>
			    <form action="ad_dash.jsp">
			    <input type="submit" value="Back" class="firstButton"/>
			    </form>
		</div> 
</body>
</html>