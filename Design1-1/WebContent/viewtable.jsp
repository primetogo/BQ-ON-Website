<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<%@page import="model.Table_cart"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.button {
	-moz-box-shadow:inset 15px 1px 0px -1px #c1ed9c;
	-webkit-box-shadow:inset 15px 1px 0px -1px #c1ed9c;
	box-shadow:inset 0px 1px 0px 0px #c1ed9c;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #9dce2c), color-stop(1, #8cb82b) );
	background:-moz-linear-gradient( center top, #9dce2c 5%, #8cb82b 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#9dce2c', endColorstr='#8cb82b');
	background-color:#9dce2c;
	-webkit-border-top-left-radius:42px;
	-moz-border-radius-topleft:42px;
	border-top-left-radius:42px;
	-webkit-border-top-right-radius:0px;
	-moz-border-radius-topright:0px;
	border-top-right-radius:0px;
	-webkit-border-bottom-right-radius:42px;
	-moz-border-radius-bottomright:42px;
	border-bottom-right-radius:42px;
	-webkit-border-bottom-left-radius:0px;
	-moz-border-radius-bottomleft:0px;
	border-bottom-left-radius:0px;
	text-indent:0px;
	border:4px solid #83c41a;
	display:inline-block;
	color:#ffffff;
	font-family:'RaiNgan';
	font-size:30px;
	font-weight:bold;
	font-style:normal;
	height:37px;
	line-height:37px;
	width:200px;
	text-decoration:none;
	text-align:center;
	text-shadow:2px -3px 0px #689324;
}
.button:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #8cb82b), color-stop(1, #9dce2c) );
	background:-moz-linear-gradient( center top, #8cb82b 5%, #9dce2c 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#8cb82b', endColorstr='#9dce2c');
	background-color:#8cb82b;
}.button:active {
	position:relative;
	top:1px;
}
h1 {color: white;}
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
  background: #646464 url(Res/grad_dark.png) repeat-x left bottom;
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
  background: #4a4a4a url(grad_dark.png) repeat-x left top;
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
  background: #8a8a8a url(grad_dark.png) repeat-x left bottom;
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
html, body {
   width: 100% ;
   height: 100% ;
   min-width: 900px ;
   min-height: 500px ;
}
#bg{
  background: url(Res/login.jpg) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;

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
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
     font-family: RaiNgan;
   	background-image: url("Res/pic1.jpg"); 
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
}
.CSSTableGenerator td{
	vertical-align:middle;
	background-color:#211103;
	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:8px;
	font-size:25px;
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
	font-size:25px;
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
<a href="index.jsp" class="logoutButton"  >หน้าหลัก</a><br>
</form>
</div>
<div id='cssmenu'>
<ul>
    <li class='has-sub'><a href='customer.jsp'><span>จองโต๊ะ</span></a>
    <ul>
     <li class='last'><a href='Checktableorder.jsp'><span>ตรวจสอบรายการจองโต๊ะ</span></a>
      </ul></li>
   <li class='has-sub'><a href='menu.jsp'><span>สั่งอาหาร</span></a>
    <ul>
         <li><a href='viewfood.jsp'  ><span>ตรวจสอบรายการอาหาร</span></a></li>
         <li class='last'><a href='CheckFoodOrder.jsp'  ><span>ตรวจสอบสถานะ Order</span></a></li>
      </ul></li>
   <li class='has-sub'><a href='#' ><span>จัดการข้อมูลส่วนตัว</span></a>
      <ul>
         <li><a href='#' ><span>แก้ไขข้อมูลส่วนตัว</span></a></li>
         <li class='last'><a href='rev_conf.jsp' ><span>ยกเลิกสมาชิก</span></a></li>
      </ul>
   </li>
</ul>
</div>
<div id="map-panel" align="center">
<h1>รายการโต๊ะที่จอง</h1>
<form method="post" action="viewtable.jsp">
<jsp:useBean id="cart2" class="model.Table_cart" scope="session"/>
<%String[] temp;
if(request.getParameter("pay")!=null)
{
	response.sendRedirect("table_con.jsp");
	}
if(request.getParameter("buy")!=null)
{
	response.sendRedirect("customer.jsp");
	}
if(request.getParameter("del")!=null)
{
	String[] table_id=request.getParameterValues("table_id");
	if(table_id !=null){
		for(int i=0;i<table_id.length;i++){
			cart2.removeTable(table_id[i]);
		}
	}
	}
if(cart2.getTable().hasMoreElements()){
%>
<div class="CSSTableGenerator">
 <table>
 <tr><td>Choose</td><td>Table id</td><td>Zone</td><td>Status</td></tr>
 <%Enumeration e=cart2.getTable();
 while(e.hasMoreElements()){
	temp=(String[]) e.nextElement();
	%>
<tr><td><input name="table_id" type="checkbox" value="<%=temp[0] %>"/></td>
<td><%=new String(temp[0].getBytes("ISO8859_1"),"windows-874")%></td>     
<td><%=temp[1] %></td>  
<td><%=temp[2] %></td>
</tr>   
<%}}else{
	out.println("<center><h1>คุณยังไม่ได้จองโต๊ะ</h1></center>");
}%>
<tr>
<td colspan="6"><div align="center">
<input name="del" type="submit" value="ยกเลิกการจองโต๊ะ" class="button">
<input name="buy" type="submit" value="จองโต๊ะเพิ่มเติม" class="button" >
<input name="pay" type="submit" value="ยืนยันการจองโต๊ะ" class="button" ></div>
</td>
</tr>   
</table>
</div>
</form>
</div>
</body>
</html>