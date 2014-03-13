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
/* Start form style  */
#wrapper {
        margin-top: 10px;
        margin-left: auto;
        margin-right: auto;
        z-index: -1;
        width:450px;
        font-family:RaiNgan;
    }
    legend {
        color:#0481b1;
        font-size:35px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:RaiNgan;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff)); /
        background: -webkit-linear-gradient(#fff, #f9fdff);
        padding:20px;
        border-color:rgba(4, 129, 177, 0.4);
    }
    input,
    textarea {
        color: #373737;
        background: #fff;
        border: 1px solid #CCCCCC;
        color: #aaa;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        background:#f5fcfe;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        -webkit-transition-duration: 400ms;
        -webkit-transition-property: width, background;
        -webkit-transition-timing-function: ease;
        -moz-transition-duration: 400ms;
        -moz-transition-property: width, background;
        -moz-transition-timing-function: ease;
        -o-transition-duration: 400ms;
        -o-transition-property: width, background;
        -o-transition-timing-function: ease;
        width: 380px;
        
        border-color:#ccc;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        opacity:0.6;
    }
    input[type="submit"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
    textarea {
        padding:3px;
        width:96%;
        height:100px;
    }
    textarea:focus {
        background:#ebf8fd;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        opacity:0.6;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        border-color:#ccc;
    }
    .small {
        line-height:14px;
        font-size:20px;
        color:#999898;
        margin-bottom:3px;
}
</style>
<title>แนะนำหรือติชม-ติดต่อ</title>
</head>
<body class="bg" >
<div id='cssmenu'>
<ul>
   <li><a href='index.jsp' ><span>หน้าหลัก</span></a></li>
   <li><a href='customer.jsp' ><span>จองโต๊ะ-รายการอาหาร</span></a></li>
   <li><a href='reg_new.jsp' ><span>สมัครสมาชิก</span></a></li>
   <li><a href='about_res.jsp' ><span>เกี่ยวกับภัตตาคาร</span></a></li>
   <li class='active'><a href='cus_speak.jsp' ><span>ความคิดเห็น-ติชม</span></a></li>
</ul>
</div><br><br><br><br><br><br>
<div id="wrapper">
        <form action="comment.do" method="post">
            <fieldset>
                <legend>ความคิดเห็น-ติชมต่อบริการและภัตตาคาร</legend>
                <div>
                    <input type="text" name="cus_name" placeholder="กรุณากรอก ชื่อ-นามสกุลของท่าน" required />
                </div>
                <div>
                    <input type="text" name="cus_adr" placeholder= "ที่อยู่ของลูกค้า" required />
                </div>
                <div>
                    <div class="small">ใส่ความคิดเห็นของท่านลงในช่องด้านล่าง</div>
                    <textarea name="cus_comment" placeholder="ความคิดเห็น-ติชมของท่าน" required></textarea>
                </div>          
                <input type="submit" name="submit" value="ส่งความคิดเห็น" />
            </fieldset>    
        </form>
    </div>
</body>
</html>