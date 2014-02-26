<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@font-face {
	font-family: 'RaiNgan';
	src: url('Res/RaiNgan.ttf'); /* IE9 Compat Modes */
	src: url('Res/RaiNgan.ttf') format('truetype'), /* IE6-IE8 */
	     url('Res/RaiNgan.ttf') format('truetype'), /* Modern Browsers */
	     url('Res/RaiNgan.ttf')  format('truetype'), /* Safari, Android, iOS */
	     url('Res/RaiNgan.ttf') format('truetype'); /* Legacy iOS */
	}
#bg{
  background: url(Res/cloud.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#inf_panel{
    height: 80px;
	width: 260px;
	font-family: RaiNgan;
	font-size: 30px;
	text-align:center;
 	background-color: #bdffb0;
	border: 2px solid #999999;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
	-moz-box-shadow: 0px 0px 20px #000000;
	-webkit-box-shadow: 0px 0px 20px #000000;
	box-shadow: 0px 0px 20px #000000;
	/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
}

#type_panel{
    margin-top: -50px;
	margin-left: auto;
	margin-right: auto;
	height: 700px;
	width: 600px;
	text-align:center;
	font-family: RaiNgan;
	font-size: 30px;
 	background-color: #bdffb0;
	border: 2px solid #999999;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
	-moz-box-shadow: 0px 0px 20px #000000;
	-webkit-box-shadow: 0px 0px 20px #000000;
	box-shadow: 0px 0px 20px #000000;
	overflow: auto;
	/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
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
table, tr, td
{
	magin-left:auto;
	text-align: center;
    font-family: RaiNgan;
    font-size: 25px;
	border: 3px solid #E1BC24;	
	background-color: #6BE08C;
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
	height: 30px;
	width: 145px;
	color:#ffffff;
	font-family:RaiNgan;
	font-size:20px;
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
</style>
</head>
<body id="bg">
<div id="inf_panel">
	<br><b>Selecting item on menu</b>
</div>

<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql:///resnew" user="root" password="123456" ></sql:setDataSource>

<sql:query dataSource="${ds}" var="res">
	SELECT DISTINCT Food_type FROM resnew.food ORDER BY Food_type ASC;
</sql:query>
<div id="type_panel"><br>
	<form method="post">
	<select name="rou">
		<c:forEach var="type" items="${res.rows}">
			<option value="${type.Food_type}">${type.Food_type}</option>
		</c:forEach>
	</select>
	<input type="submit" value="Show menu!" class="myButton" />
	</form>
	<c:if test="${param.rou=='Appetizer'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_id, Food_name, Food_price FROM resnew.food WHERE Food_type='Appetizer' ORDER BY Food_name ASC;
		</sql:query>
		<br><b>Appertizer</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if>
	<c:if test="${param.rou=='dessert'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_name, Food_price FROM resnew.food WHERE Food_type='dessert' ORDER BY Food_name ASC;
		</sql:query>	
		<br><b>Dessert</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if>
	<c:if test="${param.rou=='Set menu'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_name, Food_price FROM resnew.food WHERE Food_type='Set menu' ORDER BY Food_name ASC;
		</sql:query>
		<br><b>Set menu</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if>
	<c:if test="${param.rou=='Donburi'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_name, Food_price FROM resnew.food WHERE Food_type='Donburi' ORDER BY Food_name ASC;
		</sql:query>
		<br><b>Donburi</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if>
	<c:if test="${param.rou=='noodle'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_name, Food_price FROM resnew.food WHERE Food_type='noodle' ORDER BY Food_name ASC;
		</sql:query>
		<br><b>Noodle</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if>
	<c:if test="${param.rou=='sushi'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_name, Food_price FROM resnew.food WHERE Food_type='sushi' ORDER BY Food_name ASC;
		</sql:query>
		<br><b>Sushi</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if>
	<c:if test="${param.rou=='drink'}">
		<sql:query dataSource="${ds}" var="shit">
			SELECT Food_name, Food_price FROM resnew.food WHERE Food_type='drink' ORDER BY Food_name ASC;
		</sql:query>
		<br><b>Drink</b>
		<form action="final" method="post">
		<table border="2" align="center">
			<tr>
				<td><b>Food name</b></td>
				<td><b>Price</b></td>
				<td></td>
			</tr>
			<c:forEach var="step" items="${shit.rows}">
				<tr>
					<td>${step.Food_name}</td>
					<td>${step.Food_price}</td>
					<td><input type="checkbox" value="${step.Food_id}" /></td>
				</tr>
			</c:forEach>
		</table><br>
			<input type="submit" value="Send order" class="myButton"/>
		</form>
	</c:if><br>
	<a href="ad_dash.jsp" class="firstButton">Back to main page</a>
</div>
</body>
</html>