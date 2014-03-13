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
  margin-top: 300px;
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
html, body {
   width: 100% ;
   height: 100% ;
   min-width: 900px ;
   min-height: 500px ;
}
.bg{
  background: url(Res/WelPage10.jpg) no-repeat fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
#textbox1{
    margin-top: 0px;
    margin-left: auto;
    margin-right: auto;
    z-index:-1;
    left: 25%;
    right: 75%;
    top: 300px;
	width: 550px;
	height: 600px;
	border: 13px #c08430 groove;
	background-color: #325238;
	padding: 14px;
	color: #efebeb;
	font-size: 25px;
	font-weight: bold;
	font-family: RaiNgan;
	font-style: oblique;
	text-decoration: inherit;
	-moz-box-shadow: inset 0px 0px 7px 0px #000000;
	-webkit-box-shadow: inset 0px 0px 7px 0px #000000;
	box-shadow: inset 0px 0px 7px 0px #000000;
}
 #map_canvas {
        width: 500px;
        height: 400px;
       
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
<title>เกี่ยวกับภัตตาคาร</title>
</head>
<body class="bg">
<!-- Start navigator bar -->
<div id='cssmenu'>
<ul>
   <li><a href='index.jsp' ><span>หน้าหลัก</span></a></li>
   <li><a href='customer.jsp' ><span>จองโต๊ะ-รายการอาหาร</span></a></li>
   <li><a href='reg_new.jsp' ><span>สมัครสมาชิก</span></a></li>
   <li class='active'><a href='about_res.jsp' ><span>เกี่ยวกับภัตตาคาร</span></a></li>
   <li class='last'><a href='cus_speak.jsp' ><span>ความคิดเห็น-ติชม</span></a></li>
</ul>
</div><br><br><br><br><br>
<!-- End navigator bar -->
<div id="textbox1" align="center">
<font size="20px">Shizen Restaurant<br> しぜんレストラン</font><br>
ที่อยู่ 17/3 แขวงลาดกระบัง เขตลาดกระบัง กรุงเทพมหนคร 10520<br>
เบอร์โทรติดต่อ: 02-7351428 Fax: 02-7351528<br><br>
<div id="map_canvas">
 <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
          center: new google.maps.LatLng(13.723083, 100.783735),
          zoom: 18,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(map_canvas, map_options)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</div>
</div>
</body>
</html>