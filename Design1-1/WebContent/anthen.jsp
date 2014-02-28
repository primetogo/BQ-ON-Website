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
#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a {
  padding: 0;
  margin: 0;
  line-height: 1;
  font-family: RaiNgan;
}
#cssmenu:before,
#cssmenu:after,
#cssmenu > ul:before,
#cssmenu > ul:after {
  content: '';
  display: table;
}
#cssmenu:after,
#cssmenu > ul:after {
  clear: both;
}
#cssmenu {
  position: fixed;
  top: 20px;
  zoom: 1;
  height: 69px;
  background: url(Res/bottom-bg.png) repeat-x center bottom;
  border-radius: 2px;
  width: 100%;
}
#cssmenu ul {
  background: url(Res/nav-bg.png) repeat-x 0px 4px;
  height: 69px;
}
#cssmenu ul li {
  float: left;
  list-style: none;
}
#cssmenu ul li a {
  display: block;
  height: 37px;
  padding: 22px 30px 0;
  margin: 4px 2px 0;
  border-radius: 2px 2px 0 0;
  text-decoration: none;
  font-size: 25px;
  color: white;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.75);
  font-weight: 400;
  opacity: .9;
}
#cssmenu ul li:first-child a {
  margin: 4px 2px 0 0;
}
#cssmenu ul li a:hover,
#cssmenu ul li.active a {
  background: url(Res/color.png) center bottom;
  display: block;
  height: 37px;
  margin-top: 0px;
  padding-top: 26px;
  color: #4e2f11;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.35);
  opacity: 1;
}
.bg{
  background: url(Res/login.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
/* Start login style section */
/* login panel style */
#loginPanel{
       margin-top: 50px;
       margin-left: auto;
   	   margin-right: auto;
       width: 400px; 
       height: 400px; 
       border: 2px #888888 solid; 
       background-color: #faf0eb; 
       -moz-border-radius-bottomright: 15px;
       border-bottom-right-radius: 10px;
       -moz-border-radius-bottomleft: 10px;
       border-bottom-left-radius: 10px;
       -moz-border-radius-topleft: 10px;
       border-top-left-radius: 10px;
       -moz-border-radius-topright: 10px;
       border-top-right-radius: 10px;
       font-family:RaiNgan;
       font-size: 35px;
}
.loginButton {
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
	font-size:25px;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #154682;
}
.loginButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0061a7), color-stop(1, #007dc1));
	background:-moz-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-webkit-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-o-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:-ms-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background:linear-gradient(to bottom, #0061a7 5%, #007dc1 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0061a7', endColorstr='#007dc1',GradientType=0);
	background-color:#0061a7;
}
.loginButton:active {
	position:relative;
	top:1px;
}
#letter{
       font-family:RaiNgan;
       font-size: 27px;
}
/* login input box style */
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
/* End login style section */

</style>
<title>สวัสดีค่ะ กรุณาเข้าสู่ระบบ</title>
</head>
<body class="bg">
<!-- Start navigator bar -->
<div id='cssmenu'>
<ul>
   <li><a href='index.jsp' ><span>ย้อนกลับไปหน้าหลัก</span></a></li>
</ul>
</div><br><br><br><br><br><br>
<!-- End navigator bar -->
<!-- Start login section -->
<div id="loginPanel" align="center">
<form action="login.do" method="post">
<br>
ยินดีต้อนรับ กรุณาเข้าสู่ระบบ<br><br>
	<input name="id" class="loginInputBox" placeholder=" ชื่อผู้ใช้" required /><br><br>
	<input name="pass" type="password" class="loginInputBox" placeholder=" รหัสผ่าน" required /><br><br>
	<input class="loginButton" type="submit" value="เข้าสู่ระบบ" ><br>
<div id="letter"><a href="reg_new.jsp" >ยังไม่เป็นสมาชิก? สมัครเลย!</a></div>
</form>
<%if(session.getAttribute("mess")!=null){ %>
<% if(session.getAttribute("mess").equals("102")){ %>
<font color="RED"><b>Wrong password or username!</b></font>
<%} %><%} session.invalidate(); %>
</div>
<!-- End of login section -->
</body>
</html>