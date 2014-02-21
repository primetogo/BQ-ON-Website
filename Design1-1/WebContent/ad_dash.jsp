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
    height: 35px;
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
	width: 700px;
    margin-top: -200px;
    margin-left: 430px;
    font-family: RaiNgan;
    font-size: 40px;
    font-weight: bold;
    background-color: #CFF6DA;
	border: 2px solid #999999;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
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
    font-family: RaiNgan;
    font-size: 25px;
	border: 3px solid #E1BC24;	
	background-color: #6BE08C;
}
</style>
<title>ส่วนการจัดการ</title>
</head>
<body id="bg">
<form method="post">
<input type="submit" value="Main page" class="firstButton" name="de" /><br>
<input type="submit" value="Online admin" class="firstButton" name="de"  /><br>
<input type="submit" value="Removing Food" name="de" class="firstButton" /><br>
<input type="submit" value="Add More Food" name="de" class="firstButton" /><br>
</form><br>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql:///res" user="root" password="123456" ></sql:setDataSource>

<sql:query var="rs" dataSource="${ds}">
select * from manager where status='online'
</sql:query>



<div id="inf_panel" align="center">
Admin: <%= session.getAttribute("admin_first") %> <%= session.getAttribute("admin_last") %>
</div><br>
<form action="admingo" method="post">
  <input type="submit" value="logout" class="myButton" />
</form>
	<c:if test="${param.de!=null}">
	  <c:if test="${param.de=='Main page'}">
	</c:if>
	  <c:if test="${param.de=='Online admin'}">
		  <div id="text_table" align="center"><br>Admin in the system!
		  <table border="1">
			  <tr>
				  <td>Firstname</td>
				  <td>Lastname</td>
				  <td>Username</td>
				  <td>Phone Number</td>
				  <td>Email</td>
			  </tr>
		  <c:forEach var="admin" items="${rs.rows}">
			  <tr>
	 		      <td>${admin.Fname}</td>
	              <td>${admin.Lname}</td>
	              <td>${admin.username}</td>
	              <td>${admin.phone}</td>
	              <td>${admin.email}</td> 
	          </tr>
	      </c:forEach>
	      </table><br>
	      </div>  
	  </c:if>
	  <c:if test="${param.de=='Removing Food'}">
	    <sql:query var="rt" dataSource="${ds}">
	  	select * from Food_type
	 	 </sql:query>
	 	 <div id="text_table" align="center"><br>Choosing food type
	 	 <form action="remove_food" method="post">
	 	   <table border="1">
			  <tr>
				  <td>ID</td>
				  <td>Type</td>
				  <td></td>
			  </tr>
			  <c:forEach var="type" items="${rt.rows}">
			  <tr>
	 		      <td>${type.type_id}</td>
	              <td>${type.Food_type}</td>
	              <td><input type="radio" value="${type.type_id}" name="hh"></td>
	          </tr>
	      </c:forEach>
	      </table><br>
	      <input type="submit" value="Creating list!" class="myButton"/>
	      </form><br>
	 	 </div>
	 	 <c:if test="">
	 	 hahaha
	 	 </c:if>
	  </c:if>
	  
	  <c:if test="${param.de=='Add More Food'}">
	  	
	  </c:if>
	</c:if>
</body>
</html>