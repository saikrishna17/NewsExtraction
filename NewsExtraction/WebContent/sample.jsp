<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>News Website</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="WOW Slider, Free CSS Gallery, CSS Gallery Code" />
	<meta name="description" content="WOWSlider created with WOW Slider, a free wizard program that helps you easily generate beautiful web slideshow" />
	<!-- Start Slider HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/sliderstyle.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End Slider HEAD section -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript">
        var imgs = [
        'images/emp.jpg',
        'images/icl.jpg',
        'images/images.jpg'];
        var cnt = imgs.length;

        $(function() {
            setInterval(Slider, 3000);
        });

        function Slider() {
        $('#sliding').fadeOut("slow", function() {
           $(this).attr('src', imgs[(imgs.length++) % cnt]).fadeIn("slow");
        });
        }

		    function overlay() {
        	el = document.getElementById("overlay");
        	el.style.visibility = (el.style.visibility == "visible") ? "visible" : "visible";
        }
        function login(user,pass)
        {
        	 var a=document.forms["myForm"][user].value;
        	  var b=document.forms["myForm"][pass].value;
        	  if ((a==null || a=="") && (b==null || b==""))
        	  {
        	  alert("PLEASE FILL THE Username and password");
        					 return false;					
        }
        	  return true;
        }

</script>
</head>
<body style="background-color:#d7d7d7">
<%
String url="http://www.google.com";
String error=request.getParameter("error");
if(error==null || error=="null")
{
 error="";
}
%>

<div id="container">
  <div id="top_panel">
    <div id="sitetitle"> NEWS Website </div>
    <div id="searchbox">
      <form action="http://www.free-css.com/" method="get">
        <input name="search" type="radio" value="thissite" checked="checked" />
        this site
        <input type="radio" name="search" value="theweb" />
        the web <br />
       <input type="text" name="q" size="10" id="searchfield" title="searchfield" /> 
        <input type="submit" name="Search" value="Search" alt="Search" id="searchbutton" title="Search" /> 
        <div class="err"><p><font size="2" color="white"><%=error%></font></p></div>
       
        </form>
    </div>
    <div id="currentdate">
      <script type="text/javascript">
				<!--
				var m_names = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
				var d_names = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
				
				var currentTime = new Date()
				var day = currentTime.getDay()
				var month = currentTime.getMonth() + 1
				var date = currentTime.getDate()
				var year = currentTime.getFullYear()
				document.write( d_names[day] + ", " + date + " " + m_names[month] + " " + year + ", ")
				var currentTime = new Date()
				var hours = currentTime.getHours()
				var minutes = currentTime.getMinutes()
				if (minutes < 10){
				minutes = "0" + minutes
				}
				document.write(hours + ":" + minutes + " ")
				if(hours > 11){
				document.write("PM")
				} else {
				document.write("AM")
				}
				//-->
			</script>
    </div>
  </div>
  
  <div id="menu">
    <ul>
    

      <li><a href="http://www.free-css.com/" class="current">Home</a></li>
      <li><a href="http://www.free-css.com/">Register</a></li>
	  <li><a href="#" onclick='overlay()'>Login</a></li>
	  <li><a href="http://www.free-css.com/">Daily News</a></li>
      <li><a href="http://www.free-css.com/">Sports</a></li>
      <li><a href="http://www.free-css.com/">Business</a></li>      
      <li><a href="http://www.free-css.com/">Entertainment</a></li>  
    </ul>
</div>

<div id="overlay">
     <div>
     <p><a href="sample.jsp">[close]</a></p>
    <form name="myForm" method="post" action="Login.jsp" onsubmit="return login('username','pswrd')">
		<table>
		<tr>
		<td><p><b><i><font size="7" color="white">Login</font></i></b></p></td>
		<td><IMG SRC="images/login.png" WIDTH="80" HEIGHT="80" BORDER="0" ALT=""></td>
		</tr>
	<tr><td><BR></td><td></td></tr>
		<TR>
			<TD><FONT SIZE="5" COLOR="white">Username :</font></td>
			<td><INPUT TYPE="text" NAME="username" input style="height:30px;font-size:14pt;"></td>
		</TR>
<TR>
<tr><td><BR></td><td></td></tr>
	<TD><FONT SIZE="5" COLOR="white">Password :</font></td>
		<td><INPUT TYPE="password"  NAME="pswrd" input style="height:30px;font-size:14pt;"></td>
		</TR>
		<tr><td><BR></td><td></td></tr>
		<tr><td></td><td><INPUT TYPE="submit" value="Sign In"input style=" width:90px;height:50px;font-size:12pt;" ></td>
		</tr>
		</TABLE>
       </FORM>
	 </div>
</div>
	



</body>
</html>