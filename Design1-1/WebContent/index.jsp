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
/* Start cssmenu style */
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
  top: 180px;
  zoom: 1;
  height: 69px;
  background: url(Res/bottom-bg.png) repeat-x center bottom;
  border-radius: 2px;
  width: 100%;
}
#cssmenu ul {
  background: url(Res/nav-bg.png) repeat-x 0px 4px;
  height: 69px;
  width: 100%;
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
/* Start css menu style */
.bg{
  background: url(Res/fgff.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  cursor: url(Res/mouse.png), auto;
}
#title-style{
  top: 200px;
  font-family: RaiNgan;
  font-size: 40px;
  font-weight: bold;
  color: #FFFFFF;
  text-align: center;
}
#image-logo{
   height: 150px;
   width: 150px;
   position:fixed;
   top: 20px;
   border-radius: 5px;
}
#name-banner{
    height: 150px; 
   width: 87%; 
  position:fixed;
  top: 20px;
  right: 10px;
  border-radius: 5px;
}
</style>
    <!-- Start of slider header section -->
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End of slider header section -->
<title>ยินดีต้อนรับสู่ Shizen!</title>
</head>
<body class="bg">
<img src="Res/ShizenLogo.png" id="image-logo">
<img src="Res/Fix1.jpg" id="name-banner">
<!-- Start navigator bar -->
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp' style="cursor: url(Res/mouse.png), auto;" ><span>หน้าหลัก</span></a></li>
   <li><a href='customer.jsp' style="cursor: url(Res/mouse.png), auto;" ><span>จองโต๊ะ-รายการอาหาร</span></a></li>
   <li><a href='reg_new.jsp' style="cursor: url(Res/mouse.png), auto;" ><span>สมัครสมาชิก</span></a></li>
   <li><a href='about_res.jsp' style="cursor: url(Res/mouse.png), auto;" ><span>เกี่ยวกับภัตตาคาร</span></a></li>
   <li class='last'><a href='cus_speak.jsp' style="cursor: url(Res/mouse.png), auto;" ><span>ความคิดเห็น-ติชม</span></a></li>
</ul>
</div><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- End navigator bar -->
<!-- Start of slider body section -->
<div align="center">
<div id="wowslider-container1">
<div id="title-style">Recommend menu for this season</div><br>
	<div class="ws_images"><ul>
<li><img src="data1/images/tonkatsu.jpg" alt="Fried Pork (Tongkatsu)" title="Fried Pork (Tongkatsu)" id="wows1_0"/>Good for kids</li>
<li><img src="data1/images/assorted_japanese_food.jpg" alt="Sushi rice set " title="Sushi rice set " id="wows1_1"/>Luxury set of Sushi</li>
<li><img src="data1/images/img_5863.jpg" alt="Salmon egg roll" title="Salmon egg roll" id="wows1_2"/>Orange color of summer</li>
<li><img src="data1/images/japanesefood06.jpg" alt="Fried set" title="Fried set" id="wows1_3"/>kids gonna love it</li>
<li><img src="data1/images/sushi.jpg" alt="Topping sushi" title="Topping sushi" id="wows1_4"/>Full your hungry</li>
</ul></div>
<div class="ws_bullets"><div>
<a href="#" title="Fried Pork (Tongkatsu)"><img src="data1/tooltips/tonkatsu.jpg" alt="Fried Pork (Tongkatsu)"/>1</a>
<a href="#" title="Sushi rice set "><img src="data1/tooltips/assorted_japanese_food.jpg" alt="Sushi rice set "/>2</a>
<a href="#" title="Salmon egg roll"><img src="data1/tooltips/img_5863.jpg" alt="Salmon egg roll"/>3</a>
<a href="#" title="Fried set"><img src="data1/tooltips/japanesefood06.jpg" alt="Fried set"/>4</a>
<a href="#" title="Topping sushi"><img src="data1/tooltips/sushi.jpg" alt="Topping sushi"/>5</a>
</div></div>
	<div class="ws_shadow"></div>
	</div>
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
</div>
	<!-- End of slider body section -->
</body>
</html>