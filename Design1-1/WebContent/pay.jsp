<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="sun.security.provider.certpath.OCSP.RevocationStatus"%>
<%@page import="model.Food_Cart"%>
<%@page import="java.util.Enumeration"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:useBean id="cart" class="model.Food_Cart" scope="session"/>
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
#cssmenu ul,
#cssmenu li,
#cssmenu span,
#cssmenu a {
  margin: 0;
  padding: 0;
  position: relative;
}
#cssmenu:after,
#cssmenu ul:after {
  content: '';
  display: block;
  clear: both;
}
#cssmenu a {
  color: #ffffff;
  display: inline-block;
  font-family: RaiNgan;
  font-size: 25px;
  min-width: 35px;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 -1px 0 #333333;
}
#cssmenu ul {
  list-style: none;
}
#cssmenu > ul > li {
  float: left;
}
#cssmenu > ul > li.active a {
  background: #646464 url(file:///C|/Users/Sethong/workspace/Design1-1/WebContent/Res/grad_dark.png) repeat-x left bottom;
  background: -moz-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #646464), color-stop(100%, #4a4a4a));
  background: -webkit-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: -o-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: -ms-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: linear-gradient(to bottom, #646464 0%, #4a4a4a 100%);
  filter: progid:dximagetransform.microsoft.gradient(startColorstr='#646464', endColorstr='#4a4a4a', GradientType=0);
  box-shadow: inset 0 0 10px #222222, inset 0 10px 10px #222222;
  -moz-box-shadow: inset 0 0 10px #222222, inset 0 10px 10px #222222;
  -webkit-box-shadow: inset 0 0 10px #222222, inset 0 10px 10px #222222;
  filter: none;
}
#cssmenu > ul > li.active a:hover {
  background: -moz-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #646464), color-stop(100%, #4a4a4a));
  background: -webkit-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: -o-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: -ms-linear-gradient(top, #646464 0%, #4a4a4a 100%);
  background: linear-gradient(to bottom, #646464 0%, #4a4a4a 100%);
  filter: progid:dximagetransform.microsoft.gradient(startColorstr='#646464', endColorstr='#4a4a4a', GradientType=0);
  filter: none;
}
#cssmenu > ul > li a {
  box-shadow: inset 0 0 0 1px #8a8a8a;
  -moz-box-shadow: inset 0 0 0 1px #8a8a8a;
  -webkit-box-shadow: inset 0 0 0 1px #8a8a8a;
  background: #4a4a4a url(file:///C|/Users/Sethong/workspace/Design1-1/WebContent/grad_dark.png) repeat-x left top;
  background: -moz-linear-gradient(top, #8a8a8a 0%, #707070 50%, #626262 51%, #787878 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #8a8a8a), color-stop(50%, #707070), color-stop(51%, #626262), color-stop(100%, #787878));
  background: -webkit-linear-gradient(top, #8a8a8a 0%, #707070 50%, #626262 51%, #787878 100%);
  background: -o-linear-gradient(top, #8a8a8a 0%, #707070 50%, #626262 51%, #787878 100%);
  background: -ms-linear-gradient(top, #8a8a8a 0%, #707070 50%, #626262 51%, #787878 100%);
  background: linear-gradient(to bottom, #8a8a8a 0%, #707070 50%, #626262 51%, #787878 100%);
  filter: progid:dximagetransform.microsoft.gradient(startColorstr='#8a8a8a', endColorstr='#787878', GradientType=0);
  border-bottom: 1px solid #5d5d5d;
  border-top: 1px solid #5d5d5d;
  border-right: 1px solid #5d5d5d;
  line-height: 34px;
  padding: 0 35px;
  filter: none;
}
#cssmenu > ul > li a:hover {
  background: #8a8a8a url(file:///C|/Users/Sethong/workspace/Design1-1/WebContent/grad_dark.png) repeat-x left bottom;
  background: -moz-linear-gradient(top, #646464 0%, #4a4a4a 50%, #3b3b3b 51%, #525252 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #646464), color-stop(50%, #4a4a4a), color-stop(51%, #3b3b3b), color-stop(100%, #525252));
  background: -webkit-linear-gradient(top, #646464 0%, #4a4a4a 50%, #3b3b3b 51%, #525252 100%);
  background: -o-linear-gradient(top, #646464 0%, #4a4a4a 50%, #3b3b3b 51%, #525252 100%);
  background: -ms-linear-gradient(top, #646464 0%, #4a4a4a 50%, #3b3b3b 51%, #525252 100%);
  background: linear-gradient(to bottom, #646464 0%, #4a4a4a 50%, #3b3b3b 51%, #525252 100%);
  filter: progid:dximagetransform.microsoft.gradient(startColorstr='#8a8a8a', endColorstr='#787878', GradientType=0);
  filter: none;
}
#cssmenu > ul > li:first-child a {
  border-radius: 5px 0 0 5px;
  -moz-border-radius: 5px 0 0 5px;
  -webkit-border-radius: 5px 0 0 5px;
  border-left: 1px solid #5d5d5d;
}
#cssmenu > ul > li:last-child a {
  border-radius: 0 5px 5px 0;
  -moz-border-radius: 0 5px 5px 0;
  -webkit-border-radius: 0 5px 5px 0;
}
#cssmenu .has-sub:hover ul {
  display: block;
}
#cssmenu .has-sub ul {
  display: none;
  position: absolute;
  top: 36px;
  left: -1px;
  min-width: 100%;
  text-align: center;
  /* IE7 */

  *width: 100%;
}
#cssmenu .has-sub ul li {
  text-align: center;
}
#cssmenu .has-sub ul li a {
  border-top: 0 none;
  border-left: 1px solid #5d5d5d;
  display: block;
  line-height: 120%;
  padding: 9px 5px;
  text-align: center;
}

#bg{
  background: url(Res/fgff.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  cursor: url(/Res/mouse.png) , auto;
}
#user-detail-box{
    margin-top: 20px;
    margin-left: 77%;
    height: 60px;
    width: 350px;
    background-color: #ffd6f6;
	border: 2px solid #999999;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
	-moz-box-shadow: 0px 0px 11px #000000;
	-webkit-box-shadow: 0px 0px 11px #000000;
	box-shadow: 0px 0px 11px #000000;
	/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
	font-family: RaiNgan;
	font-size: 35px;
}
.logoutButton {
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
	color:#ffffff;
	font-family:RaiNgan;
	font-size:20px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #154682;
}
.logoutButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0061a7), color-stop(1, #007dc1));
	background:-moz-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-webkit-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-o-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-ms-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:linear-gradient(to bottom, #0061a7 5%, #007dc1 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0061a7', endColorstr='#007dc1',GradientType=0);
	background-color:#0061a7;
}
.logoutButton:active {
	position:relative;
	top:1px;
}
#map-panel{
	font-family: RaiNgan;
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
    height: 1100px;
    width: 850px;
   	background-color: #d5ffcf;
	border: 2px solid #999999;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
	-moz-box-shadow: 0px 0px 11px #000000;
	-webkit-box-shadow: 0px 0px 11px #000000;
	box-shadow: 0px 0px 11px #000000;
	
	/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
   
}
.CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:20px;
	-webkit-border-bottom-left-radius:20px;
	border-bottom-left-radius:20px;
	
	-moz-border-radius-bottomright:20px;
	-webkit-border-bottom-right-radius:20px;
	border-bottom-right-radius:20px;
	
	-moz-border-radius-topright:20px;
	-webkit-border-top-right-radius:20px;
	border-top-right-radius:20px;
	
	-moz-border-radius-topleft:20px;
	-webkit-border-top-left-radius:20px;
	border-top-left-radius:20px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:20px;
	-webkit-border-bottom-right-radius:20px;
	border-bottom-right-radius:20px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:20px;
	-webkit-border-top-left-radius:20px;
	border-top-left-radius:20px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:20px;
	-webkit-border-top-right-radius:20px;
	border-top-right-radius:20px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:20px;
	-webkit-border-bottom-left-radius:20px;
	border-bottom-left-radius:20px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffffff;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
	
	background-color:#211103;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:8px;
	font-size:15px;
	font-family: RaiNgan;
	font-weight:normal;
	color:#ffffff;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #472200 5%, #7f3f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #472200), color-stop(1, #7f3f00) );
	background:-moz-linear-gradient( center top, #472200 5%, #7f3f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#472200", endColorstr="#7f3f00");	background: -o-linear-gradient(top,#472200,7f3f00);

	background-color:#472200;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family: RaiNgan;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #472200 5%, #7f3f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #472200), color-stop(1, #7f3f00) );
	background:-moz-linear-gradient( center top, #472200 5%, #7f3f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#472200", endColorstr="#7f3f00");	background: -o-linear-gradient(top,#472200,7f3f00);

	background-color:#472200;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
</style>
<title>การรับออเดอร์และจองโต๊ะ</title>
</head>
<body id="bg">
<div id="user-detail-box" align="center">
ยินดีต้อนรับ, <%= session.getAttribute("first") %>  <%= session.getAttribute("last") %>
<br><br>
<form action="logout" method="post" >
<input type="submit" value="ออกจากระบบ" class="logoutButton" />
<a href="index.jsp" class="logoutButton" style="cursor: url(Res/mouse.png) , auto;" >หน้าหลัก</a><br>
</form>
</div>
<div id='cssmenu'>
<ul>
   <li class='active'><a href='customer.jsp'><span>จองโต๊ะ-สั่งอาหาร</span></a></li>
   <li class='has-sub'><a href='#' style="cursor: url(Res/mouse.png) , auto;" ><span>จัดการข้อมูลส่วนตัว</span></a>
      <ul>
         <li><a href='#' style="cursor: url(Res/mouse.png) , auto;" ><span>แก้ไขข้อมูลส่วนตัว</span></a></li>
         <li class='last'><a href='rev_conf.jsp' style="cursor: url(/Res/mouse.png) , auto;" ><span>ยกเลิกสมาชิก</span></a></li>
      </ul>
   </li>
</ul>
</div>
<div id="map-panel" align="center">
<h1>กรุณายืนยันรายการพร้อมเลือกการชำระ</h1>
<jsp:useBean id="pa" class="model.MENUBEAN" scope="session"/>
<form method="post" action="pay.jsp">
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql:///resnew" user="root" password="root"/>
<h2>รายการโต๊ะที่จอง</h2>
<c:forEach var="Table" items="${sessionScope.tc.table_reserve}">
<h3>หมายเลขโต๊ะ : ${Table.table_id}</h3>
<h3>โซนที่นั่ง : ${Table.zone}</h3> 
<h3>จำนวนที่นั่ง : ${Table.seat_amount}</h3> 
</c:forEach>

<%String[] temp;
PreparedStatement pstmt;
Class.forName("com.mysql.jdbc.Driver");
String order_id="";
int sum=0;
int amount =0;
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resnew","root","root");
		Statement stmt=con.createStatement();
		String sql;ResultSet rs;
if(cart.getItem().hasMoreElements()){
	Enumeration enu =cart.getItem();
	 while(enu.hasMoreElements()){
		temp=(String[]) enu.nextElement();
		sum=Integer.parseInt(temp[2])*Integer.parseInt(temp[3]);
		amount+=sum;}
	 
}
pstmt = con.prepareStatement("Insert Into payment(Payment_amount,Payment_type,payment_status) values(?,?,?)");
pstmt.setFloat(1, Float.parseFloat(Integer.toString(amount)));
pstmt.setString(2, "ATM");
pstmt.setString(3, "waiting");
pstmt.execute();
pstmt.close();
Enumeration enu =cart.getItem();
while(enu.hasMoreElements()){
	temp=(String[]) enu.nextElement();
	pstmt = con.prepareStatement("Insert Into order_detail(Food_amount,Food_id) values(?,?)");
	pstmt.setString(1, temp[2]);
	pstmt.setInt(2, Integer.parseInt(temp[0]));
	pstmt.execute();
	pstmt.close();}
pstmt = con.prepareStatement("Insert Into order(Order_status) values(?)");
pstmt.setString(1, "w");
pstmt.execute();
pstmt.close();
cart.close();
response.sendRedirect("Thankyou.jsp");
%>
</form>
</div>
</body>
</html>