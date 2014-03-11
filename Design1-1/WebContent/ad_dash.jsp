<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

#inf_panel{
    height: 70px;
	width: 300px;
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
	/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
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
	width: 230px;
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
	text-align: center;
    font-family: RaiNgan;
    width: auto;
    font-size: 25px;
	border: 3px solid #E1BC24;	
	background-color: #6BE08C;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
}
#type_panel{
    margin-top: -400px;
	margin-left: auto;
	margin-right: auto;
	height: 470px;
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
#morefood{
    text-align: center;
	margin-top: -450px;
	margin-left: auto;
	margin-right: auto;
	height: 570px;
	width: 450px;
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
#typeselect{
    margin-left: 50px;
	text-align: left;
	height: 270px;
	width: 380px;
	font-family: RaiNgan;
	font-size: 30px;
}
#moreorder{
	text-align: center;
	margin-top: -450px;
	margin-left: auto;
	margin-right: auto;
	height: 400px;
	width: 450px;
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
#inorder1{
	margin-top: 20px;
 	margin-left: 40px;
	height: 200px;
	width: 400px;
	text-align: left;
}
.loginInputBox{
       height: 30px;
       width: 200px; 
       -moz-border-radius-bottomright: 5px;
       border-bottom-right-radius: 5px;
       -moz-border-radius-bottomleft: 5px;
       border-bottom-left-radius: 5px;
       -moz-border-radius-topleft: 5px;
       border-top-left-radius: 5px;
       -moz-border-radius-topright: 5px;
       border-top-right-radius: 5px;
       font-family:RaiNgan;
       font-size: 25px;
}

#admin{
	text-align: center;
	margin-top: -450px;
	margin-left: auto;
	margin-right: auto;
	height: 1260px;
	width: 530px;
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
#shift1{
	text-align:left;
	margin-left:50px;
}
#all{
	margin-top: -500px;
	font-family: RaiNgan;
	font-size: 30px;
}
</style>
<title>ส่วนควบคุม:จัดการ</title>
</head>
<body id="bg">
<form method="post">
<input type="submit" value="Main Page" class="firstButton" name="de" /><br>
<input type="submit" value="Removing Food" name="de" class="firstButton" /><br>
<input type="submit" value="Add More Food" name="de" class="firstButton" /><br>
<input type="submit" value="Order Recieved" name="de" class="firstButton" /><br>
<input type="submit" value="Order Terminate" name="de" class="firstButton" /><br>
<input type="submit" value="Order Checkout" name="de" class="firstButton" /><br>
<input type="submit" value="Order Ready" name="de" class="firstButton" /><br>
<input type="submit" value="Order Overview" name="de" class="firstButton" /><br>
<input type="submit" value="New Order" name="de" class="firstButton" /><br>
<input type="submit" value="Add New Employee" name="de" class="firstButton" /><br>
</form><br>

	<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql:///resnew" user="root" password="123456" ></sql:setDataSource>


<div id="inf_panel" align="center">
	Admin: <%= session.getAttribute("admin_first") %> <%= session.getAttribute("admin_last") %><br>
	Status: 
	<%if(session.getAttribute("incoming")!=null){%>
		<font color="green"><b><%= session.getAttribute("incoming") %></b></font>
		<%session.setAttribute("incoming", "Ready!"); %>
	<%}else{%><font color="green"><b>Ready!</b></font><%} %>
</div><br>
	<form action="admingo" method="post">
 		 <input type="submit" value="logout" class="myButton" />
	</form>
<c:if test="${param.de!=null}">     
	<c:if test="${param.de=='Main page'}"></c:if>	
	<c:if test="${param.de=='Removing Food'}">
		<sql:query dataSource="${ds}" var="res">
			SELECT DISTINCT food_type FROM resnew.food;
		</sql:query>
		<div id="type_panel" align="center">
			<form action="get_food" method="post"><br>
				<table border="1" width="80%" >
					<tr>
						<td><b>Food Type</b></td>
						<td><b>check</b></td>
					</tr>
					<c:forEach var="gg" items="${res.rows}">
						<tr>
							<td><c:out value="${gg.Food_type}" /></td>
							<td><input type="radio" name="kindy" value="${gg.Food_type}" /></td>
						</tr>
					</c:forEach>
				</table>
				<br>
				<input type="submit" value="Next!" class="myButton" width="50%"/>
			</form>
		</div> 
		
	</c:if>
	<c:if test="${param.de=='Add More Food'}">
		<sql:query dataSource="${ds}" var="shi">
			SELECT DISTINCT food_type FROM resnew.food;
		</sql:query>
		<div id="morefood" ><br>
		<div align="center"><b>Add new food</b></div><br>
			<form action="addfood" method="post">
				<b>Food name: </b><input type="text" name="food_name" placeholder="name" class="loginInputBox" /><br><br>
				    <b>Price: </b><input type="text" name="food_price" placeholder="price" class="loginInputBox" /><br><br>
				<div id="typeselect">
				    <b>Please, select type of food</b><br>
				<c:forEach var = "xx" items="${shi.rows}" >
					<input type="radio" value="${xx.Food_type}" name="blah" /><c:out value="${xx.Food_type}"/><br>
				</c:forEach>
				</div>
				<input type="submit" value="Add" class="myButton"/>
			</form>
		</div>
	</c:if>
	<c:if test="${param.de=='Order Terminate'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id`
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Terminate</b><br>
			<form method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Status</b></td>
						<td><b>Remove</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="cheese"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Process!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Order Checkout'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id` AND Order_status='C'
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Checkout</b><br>
			<form action="order_check" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Status</b></td>
						<td><b>Checkout</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="butter"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Process!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<!-- Here it is where it's redirect to order management (Order_create servlet) -->
	<c:if test="${param.de=='New Order'}">
		<sql:query dataSource="${ds}" var="person">
			SELECT DISTINCT Seat_amount FROM `table` WHERE Table_Status='no' ORDER BY Seat_amount ASC
		</sql:query>
		<sql:query dataSource="${ds}" var="zone">
			SELECT DISTINCT Zone FROM `table` WHERE Table_Status='no' ORDER BY Zone ASC
		</sql:query>
		<div id="moreorder">
		<br><font size="10"><b>New order insert</b></font>
		<form action="neworder" method="post">
			<div id="inorder1">
			<b>Customer name:</b><br>
				<b>First name</b> <input type="text" name="outer_first" class="loginInputBox" /><br>
				<b>Last name</b> <input type="text" name="outer_last" class="loginInputBox" /><br>
				<b>Amount of person</b> <select name="seat_check">
				<c:forEach var="tab1" items="${person.rows}">
				<option value="${tab1.Seat_amount}">${tab1.Seat_amount} person</option>
				</c:forEach>
				</select><br><font color="red" size="5">*highest number that's max person per table</font><br>
				<b>Table zone </b><select name="zone_check">
				<c:forEach var="tab2" items="${zone.rows}">
				<option value="${tab2.Zone}">${tab2.Zone} zone</option>
				</c:forEach>
				</select>
			</div><br>
			<input type="submit" value="Next!" class="myButton" />
		</form>
		</div>
	</c:if>
	<c:if test="${param.de=='Order Recieved'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id` AND Order_status='W'
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Recieved</b><br>
			<form action="confirm" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Status</b></td>
						<td><b>Confirm</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="peanut"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Process!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Order Ready'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id` AND Order_status='CK'
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Ready</b><br>
			<form action="rea" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Status</b></td>
						<td><b>Ready</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="yelly"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Process!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Order Overview'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id`
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Overview</b><br>
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Date/Time</b></td>
						<td><b>Status</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.Food_Time}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
						</tr>
					</c:forEach>
				</table><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Add New Employee'}">
		<div id="admin"><br>
		<font color="Green" size="10">Register new admin</font><br><br>
		<form action="newbie" method="post">
		<div id="shift1">
		    <b>Basic Information:</b><br><br>
			Employee ID: <input type="text" name="ad_id" class="loginInputBox" required /><br><br>
			First name: <input type="text" name="ad_fname" class="loginInputBox" required /><br><br>
			Last Name: <input type="text" name="ad_lname" class="loginInputBox" required /><br><br>
		
			<b>Select your sex:</b><br><br>
			<select name="sex">
 				 <option value="F">Female</option>
				  <option value="M">Male</option>
			</select><br><br>
			<b>Select your role:</b><br><br>
			<select name="role">
 				 <option value="E">Employee</option>
				  <option value="A">Admin</option>
			</select><br><br>		
			<b>Contact Information:</b><br><br>	
			Address: <input type="text" name="ad_adr" class="loginInputBox" required /><br><br>
			Telephone Number: <input type="text" name="ad_tel" class="loginInputBox" required /><br><br>
			E-mail: <input type="text" name="ad_mail" class="loginInputBox" required /><br><br>
			<b>Admin ID:</b><br><br>
			Username: <input type="text" name="ad_user" class="loginInputBox" required /><br><br>
			Password: <input type="password" name="ad_pass" class="loginInputBox" required /><br><br>
		</div>
		<input type="submit" value="Finish" class="myButton" />
		</form>
		</div>
	</c:if>
</c:if>
</body>
</html>