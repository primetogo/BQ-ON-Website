<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
@font-face {
	font-family: 'RaiNgan';
	src: url('Res/RaiNgan.ttf'); /* IE9 Compat Modes */
	src: url('Res/RaiNgan.ttf') format('truetype'), /* IE6-IE8 */
	     url('Res/RaiNgan.ttf') format('truetype'), /* Modern Browsers */
	     url('Res/RaiNgan.ttf')  format('truetype'), /* Safari, Android, iOS */
	     url('Res/RaiNgan.ttf') format('truetype'); /* Legacy iOS */
	}
table, th, td
{
	text-align: center;
    font-family: RaiNgan;
    font-size: 25px;
	border: 3px solid #E1BC24;	
	background-color: #6BE08C;
	margin-top: 30px;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
}
#bg{
  background: url(Res/cloud.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
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
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #d02718;
	height: 35px;
	width: 150px;
	margin-top: 10px;
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
	margin-top: 10px;
	height: 27px;
	width: 130px;
	color:#ffffff;
	font-family:RaiNgan;
	font-size:20px;
	font-weight: bold;
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
select{
	margin-top: 20px;
	text-align:center;
	font-family: RaiNgan;
	font-size:25px;
	font-weight: bold;
	height: 30px;
	width: 100px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
}
option:HOVER{
	-moz-border-radius:8px;
	-webkit-border-radius:8px;
	border-radius:8px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selecting food type for order</title>
</head>
<body id="bg">
	<sql:setDataSource var="dsf_t" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql:///resnew" user="root" password="123456" ></sql:setDataSource>
    <sql:query dataSource="${dsf_t}" var="me1" >
    	SELECT DISTINCT Food_type FROM food
    </sql:query>	
    <div align="center">
	<form method="post">
		<select name="tp">
			<c:forEach var="gft" items="${me1.rows}">
			 	<option value="${gft.Food_type}" ><c:out value="${gft.Food_type}" /></option>
			</c:forEach>
		</select><br>
		<input type="submit" value="Process!" class="myButton" />
	</form>
	<a href="ad_dash.jsp" class="firstButton" >Back to main page</a></div>	
	<c:if test="${param.tp!=null}">
	<sql:query dataSource="${dsf_t}" var="me2">
		SELECT Food_name, Food_price, Food_id FROM food WHERE Food_type='<%= request.getParameter("tp") %>' 
	</sql:query><div align="center">
		<form action="food_passing" method="post">
			<table align="center">
				<tr>
					<td><b>Name</b></td>
					<td><b>Price</b></td>
				</tr>
				<c:forEach var="gg" items="${me2.rows}">
					<tr>
						<td><c:out value="${gg.Food_name}" /></td>
						<td><c:out value="${gg.Food_price}" /></td>
						<td><input type="checkbox" value="${gg.Food_id}" name="passing" /></td>
					</tr>
				</c:forEach>
			</table>
			<input type="submit" value="Send order!" class="myButton"/><br><br>
		</form></div>
	</c:if>
</body>
</html>