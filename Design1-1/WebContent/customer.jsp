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

#bg{
  background: url(Res/fgff.jpg) no-repeat center center fixed; 
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
    height: 500px;
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
</style>
<title>การรับออเดอร์และจองโต๊ะ</title>
</head>
<body id="bg">
<div id="user-detail-box" align="center">
Welcome, <%= session.getAttribute("first") %>  <%= session.getAttribute("last") %>
<br><br>
<form action="logout" method="post" >
<input type="submit" value="Logout" class="logoutButton" />
<a href="index.jsp" class="logoutButton" >Home</a><br>
</form>
</div>
<div id='cssmenu'>
<ul>
   <li class='active'><a href='customer.jsp'><span>จองโต๊ะ-สั่งอาหาร</span></a></li>
   <li class='has-sub'><a href='#'><span>จัดการข้อมูลส่วนตัว</span></a>
      <ul>
         <li><a href='#'><span>แก้ไขข้อมูลส่วนตัว</span></a></li>
         <li class='last'><a href='rev_conf.jsp'><span>ยกเลิกสมาชิก</span></a></li>
      </ul>
   </li>
</ul>
</div>
<div id="map-panel" align="center"><br><br>
<img src="Res/webpro.png" width="759" height="424" usemap="#Map">
<map name="Map" id="Map">
    <area shape="rect" coords="38,17,133,84" href="#" alt="1" />
    <area shape="rect" coords="152,11,286,94" href="#" alt="2" />
    <area shape="rect" coords="317,16,420,82" href="#" alt="3" />
    <area shape="rect" coords="41,150,223,256" href="#" alt="4" />
    <area shape="rect" coords="248,149,422,255" href="#" alt="5" />
    <area shape="rect" coords="457,24,540,75" href="#" alt="6" />
    <area shape="rect" coords="559,21,634,80" href="#" />
    <area shape="rect" coords="465,97,538,148" href="#" />
    <area shape="rect" coords="561,100,636,148" href="#" />
    <area shape="rect" coords="465,167,539,218" href="#" />
    <area shape="rect" coords="554,162,639,220" href="#" />
    <area shape="rect" coords="465,231,547,281" href="#" />
    <area shape="rect" coords="42,275,91,295" href="#" />
  </map>
  </div>
</body>
</html>