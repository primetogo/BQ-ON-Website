<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<meta http-equiv="refresh" content="5;url=index.jsp">
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
   	 background: url(Res/hd.jpg) no-repeat;
     -webkit-background-size: cover;
 	 -moz-background-size: cover;
 	 -o-background-size: cover;
 	  cursor: url(Res/mouse.png), auto;
}
#pusheen{
 	content: url(Res/cookis.gif) no-repeat;
 	height: 200px;
 	width: 200px;
 	border-radius: 10px;
}
#box{
    margin: 0px auto;
    height: 500px;
    width: 450px;
    font-family: RaiNgan;
	font-size: 40px;
	font-weight: bold;
    background-color: #f7fffe;
	border: 2px solid #999999;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	/*IE 7 AND 8 DO NOT SUPPORT BORDER RADIUS*/
	-moz-box-shadow: 0px 0px 10px #000000;
	-webkit-box-shadow: 0px 0px 10px #000000;
	box-shadow: 0px 0px 10px #000000;
	cursor: url(Res/mouse.png), auto;
	/*IE 7 AND 8 DO NOT SUPPORT BLUR PROPERTY OF SHADOWS*/
   
}
a {
    color: #28B731;
    text-decoration: none;
    cursor: url(Res/mouse.png), auto;
}

a:hover 
{
     color:#0C4F11; 
     text-decoration:none; 
     cursor:pointer;  
}​
</style>
<title>การสมัครสมาชิกสำเร็จ!</title>
</head>
<body id="bg">

<div id="box" align="center">
<br><br>
Say, Hello to <%= session.getAttribute("hi1") %>  <%= session.getAttribute("hi2") %><br>
<a href="index.jsp" >Get back to Home!</a><br><br>
<div align="center">
<img src="Res/cookies.gif" height="200" width="200" id="pusheen"/>
</div>
</div>

</body>
</html>