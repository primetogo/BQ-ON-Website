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
#cssmenu > ul {
  list-style: none;
  margin: 0;
  padding: 0;
  vertical-align: baseline;
  line-height: 1;
}
/* The container */
#cssmenu > ul {
  display: block;
  position: relative;
  width: 150px;
  /* The list elements which contain the links */

}
#cssmenu > ul li {
  display: block;
  position: relative;
  margin: 0;
  padding: 0;
  width: 100%;
}
/* General link styling */
#cssmenu > ul li a {
  /* Layout */
  width: 150px;
  display: block;
  position: relative;
  margin: 0;
  border-top: 1px dotted #3a3a3a;
  border-bottom: 1px dotted #1b1b1b;
  padding: 11px 20px;
  /* Typography */

  font-family: RaiNgan;
  color: #d8d8d8;
  text-decoration: none;
  text-transform: uppercase;
  text-shadow: 0 1px 1px #000;
  font-size: 25px;
  font-weight: 300;
  /* Background & effects */

  background: #282828;
}
/* Rounded corners for the first link of the menu/submenus */
#cssmenu > ul li:first-child > a {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-top: 0;
}
/* Rounded corners for the last link of the menu/submenus */
#cssmenu > ul li:last-child > a {
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  border-bottom: 0;
}
/* The hover state of the menu/submenu links */
#cssmenu > ul li > a:hover,
#cssmenu > ul li:hover > a {
  color: #ffffff;
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.3);
  background: #54cdf1;
  background: -webkit-linear-gradient(#72d4f2, #54cdf1);
  background: -moz-linear-gradient(#72d4f2, #54cdf1);
  background: linear-gradient(#72d4f2, #54cdf1);
  border-color: transparent;
}
/* The arrow indicating a submenu */
#cssmenu > ul .has-sub > a::after {
  content: '';
  position: absolute;
  top: 16px;
  right: 10px;
  width: 0px;
  height: 0px;
  /* Creating the arrow using borders */

  border: 4px solid transparent;
  border-left: 4px solid #d8d8d8;
}
/* The same arrow, but with a darker color, to create the shadow effect */
#cssmenu > ul .has-sub > a::before {
  content: '';
  position: absolute;
  top: 17px;
  right: 10px;
  width: 0px;
  height: 0px;
  /* Creating the arrow using borders */

  border: 4px solid transparent;
  border-left: 4px solid #000;
}
/* Changing the color of the arrow on hover */
#cssmenu > ul li > a:hover::after,
#cssmenu > ul li:hover > a::after {
  border-left: 4px solid #ffffff;
}
#cssmenu > ul li > a:hover::before,
#cssmenu > ul li:hover > a::before {
  border-left: 4px solid rgba(0, 0, 0, 0.3);
}
/* THE SUBMENUS */
#cssmenu > ul ul {
  margin-left: 35px;
  z-index: 20;
  position: absolute;
  left: 100%;
  top: -9999px;
  padding-left: 5px;
  opacity: 0;
  width: 140px;
  /* The fade effect, created using an opacity transition */

  -webkit-transition: opacity 0.3s ease-in;
  -moz-transition: opacity 0.3s ease-in;
  transition: opacity 0.3s ease-in;
}
/* Showing the submenu when the user is hovering the parent link */
#cssmenu > ul li:hover > ul {
  top: 0px;
  opacity: 1;
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
</style>
<title>ส่วนการจัดการ</title>
</head>
<body id="bg">
<form method="get">
<div id='cssmenu'>
<ul>
   <li class='active'><a href='#'><span>ใครกำลังอยู่ในระบบ?</span></a></li>
   <li class='has-sub'><a href='#'><span>จัดการรายการอาหาร-เครื่องดื่ม</span></a>
      <ul>
         <li><a href='#'><span>เครื่องดื่ม</span></a>
         <li><a href='#'><span>อาหาร</span></a>
      </ul>
   </li>
   <li><a href='#'><span>About</span></a></li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
</div></form><br>
<div id="inf_panel" align="center">
Admin: <%= session.getAttribute("admin_first") %> <%= session.getAttribute("admin_last") %>
</div><br>
<form action="admingo" method="post">
  <input type="submit" value="logout" class="myButton" />
</form>
</body>
</html>