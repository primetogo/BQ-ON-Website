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
  background: url(Res/emp1.jpg) no-repeat center center fixed; 
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
	margin-top: 30px;
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
	margin-top: -350px;
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
	margin-top: -450px;
	margin-left: 200px;
	font-family: RaiNgan;
	font-size: 30px;
}
#all2{
	margin-top: -450px;
	margin-left: 200px;
	font-family: RaiNgan;
	font-size: 30px;
}
#all3{
	margin-top: -400px;
	margin-left: 200px;
	font-family: RaiNgan;
	font-size: 30px;
}
#all4{
	margin-top: -400px;
	margin-left: 200px;
	font-family: RaiNgan;
	font-size: 30px;
}
</style>
<title>ส่วนควบคุม:พนักงาน</title>
</head>
<body id="bg">
<form method="post">
<input type="submit" value="Main Page" class="firstButton" name="de" /><br>
<input type="submit" value="Order Recieved" name="de" class="firstButton" /><br>
<input type="submit" value="Order Terminate" name="de" class="firstButton" /><br>
<input type="submit" value="Order to cooking" name="de" class="firstButton" /><br>
<input type="submit" value="Order in process" name="de" class="firstButton" /><br>
<input type="submit" value="Order Overview" name="de" class="firstButton" /><br>
<input type="submit" value="View Food queue" name="de" class="firstButton" /><br>
<input type="submit" value="Payment in queue" name="de" class="firstButton" /><br>
<input type="submit" value="New Order" name="de" class="firstButton" /><br>
</form><br>
	<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql:///resnew" user="root" password="123456" ></sql:setDataSource>
	
<div id="inf_panel" align="center">
	Admin: <%= session.getAttribute("emp_first") %> <%= session.getAttribute("emp_last") %><br>
	Status: 
	<%if(session.getAttribute("incoming1")!=null){%>
		<font color="green"><b><%= session.getAttribute("incoming1") %></b></font>
		<%session.setAttribute("incoming1", "Ready!"); %>
	<%}else{%><font color="green"><b>Ready!</b></font><%} %>
</div><br>
	<form action="empgo" method="post">
 		 <input type="submit" value="logout" class="myButton" />
	</form>
<c:if test="${param.de!=null}"> 	
	<c:if test="${param.de=='Main page'}"></c:if>
	<c:if test="${param.de=='Order Terminate'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id`
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Terminate</b>
			<form action="orderter" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Table number</b></td>
						<td><b>Status</b></td>
						<td><b>Remove</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.table_Table_id}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="cheese"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Cancle!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Payment in queue'}">
		<sql:query dataSource="${ds}" var="price">
			SELECT Food_time, table_Table_id, Payment_amount, Payment_type, payment_status, idPayment FROM resnew.order, resnew.payment
			WHERE payment_status='Pending' 
		</sql:query>
		<div id="all4" align="center">
		<form action="paid" method="post">
		<b>Payment in queue</b>
			<table border="1" width="80%">
				<tr>
					<td><b>Ordering time</b></td>
					<td><b>Table number</b></td>
					<td><b>Total price</b></td>
					<td><b>Payment type</b></td>
					<td><b>Status</b></td>
				</tr>
				<c:forEach var="mem" items="${price.rows}">
					<tr>
						<td><c:out value="${mem.Food_time}" /></td>
						<td><c:out value="${mem.table_Table_id}" /></td>
						<td><c:out value="${mem.Payment_amount}" /></td>
						<td><c:out value="${mem.Payment_type}" /></td>
						<td><c:out value="${mem.payment_status}" /></td>
						<td><input type="checkbox" value="${mem.idPayment}" name="uu"></td>
					</tr>
				</c:forEach>
			</table><br>
				<input type="submit" value="Paid!" class="myButton"/>
		</form>
		</div>
	</c:if>
	<c:if test="${param.de=='View Food queue'}">
		<sql:query dataSource="${ds}" var="time">
			SELECT order_id, Food_time, Food_amount, Food_name FROM resnew.order, resnew.order_detail, food
			WHERE order_id=order_order_id AND Food_Food_id=Food_id AND Order_status='Cooking'
		</sql:query>
		<div id="all3" align="center">
		<b>Food queue</b>
			<table border="1" width="80%">
				<tr>
					<td><b>Queue number</b></td>
					<td><b>Ordering time</b></td>
					<td><b>Ordering amount</b></td>
					<td><b>Name</b></td>
				</tr>
				<c:forEach var="hh" items="${time.rows}">
					<tr>
						<td><c:out value="${hh.order_id}" /></td>
						<td><c:out value="${hh.Food_time}" /></td>
						<td><c:out value="${hh.Food_amount}" /></td>
						<td><c:out value="${hh.Food_name}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>
	<c:if test="${param.de=='Order to cooking'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id` AND Order_status='Confirmed'
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Checkout</b><br>
			<form action="order_check" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Table number</b></td>
						<td><b>Status</b></td>
						<td><b>Checkout</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.table_Table_id}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="butter"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Cook it!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
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
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id` AND Order_status='Pending'
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Recieved</b><br>
			<form action="confirm" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Table number</b></td>
						<td><b>Status</b></td>
						<td><b>Confirm</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.table_Table_id}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="peanut"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Confirm!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Order in process'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id` AND Order_status='Cooking'
		</sql:query>
		<div id="all" align="center"><br>
		<b>Order Ready</b><br>
			<form action="rea" method="post">
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Table number</b></td>
						<td><b>Status</b></td>
						<td><b>Ready</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.table_Table_id}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
							<td><input type="checkbox" value="${me.order_id}" name="yelly"/></td>
						</tr>
					</c:forEach>
				</table><br>
				<input type="submit" value="Finished!" class="myButton" />
			</form><br><br>
		</div>
	</c:if>
	<c:if test="${param.de=='Order Overview'}">
		<sql:query dataSource="${ds}" var="meh">
			SELECT * FROM `customer`, `order` WHERE `customer`.`Cus_id` = `order`.`Customer_Cus_id`
		</sql:query>
		<div id="all2" align="center"><br>
		<b>Order Overview</b><br>
				<table border="1" width="80%">
					<tr>
						<td><b>Order ID</b></td>
						<td><b>Customer first name</b></td>
						<td><b>Customer last name</b></td>
						<td><b>Table number</b></td>
						<td><b>Date/Time</b></td>
						<td><b>Status</b></td>
					</tr>
					<c:forEach var="me" items="${meh.rows}">
						<tr>
							<td><c:out value="${me.order_id}" /></td>
							<td><c:out value="${me.Cus_Fname}" /></td>
							<td><c:out value="${me.Cus_Lname}" /></td>
							<td><c:out value="${me.table_Table_id}" /></td>
							<td><c:out value="${me.Food_Time}" /></td>
							<td><c:out value="${me.Order_status}" /></td>
						</tr>
					</c:forEach>
				</table><br><br>
		</div>
	</c:if>
</c:if>
</body>
</html>