<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>News Website</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
</script>
</head>
<body>
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
				function check()
				{
					return true;

				}
			</script>
    </div>
  </div>
  <div id="menu">
    <ul>
      <li><a href="http://www.free-css.com/" class="current">Home</a></li>
      <li><a href="http://www.free-css.com/">Daily News</a></li>
      <li><a href="http://www.free-css.com/">Sports</a></li>
      <li><a href="http://www.free-css.com/">Business</a></li>
      <li><a href="http://www.free-css.com/">Politics</a></li>
      <li><a href="http://www.free-css.com/">Entertainment</a></li>
      <li><a href="http://www.free-css.com/">Technology &amp; Science</a></li>
    </ul>
  </div>
  <div id="content">
    <div id="main_leftcol">
      <div class="leftcol_subcol">
        <div id="topnews"> <img src="images/image_01.jpg" alt="" />
          <h1>Free CSS Template from TemplateMo.com</h1>
          <p align="justify"> This website template is provided by TemplateMo.com for FREE of charge. Feel free to use this web layout for your websites. Photos are from PublicDomainPictures.</p>
          <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar scelerisque ante. <a href="http://www.free-css.com/">full story</a></p>
          <span class="updatedtime">updated 12 minutes ago</span> </div>
        <div id="gallery_section">
          <h2>Today's Images</h2>
          <div id="image_section"> <a href="http://www.free-css.com/"><img src="images/image_02.jpg" alt="" /></a> <a href="http://www.free-css.com/"><img src="images/image_03.jpg" alt="" /></a> <a href="http://www.free-css.com/"><img src="images/image_04.jpg" alt="" /></a> <a href="http://www.free-css.com/"><img src="images/image_05.jpg" alt="" /></a> <a href="http://www.free-css.com/"><img src="images/image_06.jpg" alt="" /></a> <a href="http://www.free-css.com/"><img src="images/image_07.jpg" alt="" /></a> </div>
          <div class="view_all"><a href="http://www.free-css.com/">View All Photos</a></div>
        </div>
      </div>
      <div class="leftcol_subcol">
        <div class="regular_section">
          <h2>General News</h2>
          <div class="newsbox"><img src="images/image_08.jpg" alt="" /><span class="newstitle">News Title 01</span><br />
            <p> Lorem ipsum dolor sit amet, adipiscing elit. Nunc quis sem nec tincidunt. Duis vitae velit sed dui malesuada. <a href="http://www.free-css.com/">full story</a> </p>
          </div>
          <ul>
            <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://www.free-css.com/">Duis mollis aliquet ligula</a></li>
            <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum.</a></li>
            <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus.</a></li>
            <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
            <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
          </ul>
          <a href="http://www.free-css.com/">Read all news for the last 24 hrs</a> </div>
        <div class="regular_section">
          
          
          
          
          <h2>Sports</h2>
          <div class="newsbox"><img src="images/image_12.jpg" alt="" /><span class="newstitle">News Title 02</span><br />
            <p> Morbi tristique, risus quis congue pulvinar, nisl nisi commodo diam, a porta nisi ligula ac massa. Vestibulum blandit <a href="http://www.free-css.com/">full story</a> </p>
          </div> 
<ul>
          <% 
try
{
Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","sahithi");
    	    Statement st=con.createStatement();
    	    Statement st2=con.createStatement();
ResultSet rs=st.executeQuery("select *from sports");
ResultSet rs1=st2.executeQuery("select *from data");
for(int i=0;i<7;i++)
{
while(rs.next() && rs1.next())
{
 String link=rs.getString(3);
 String text=rs1.getString(4);
//System.out.print(link);
String title=rs.getString(4);


//System.out.println(title);
//response.sendRedirect("newsDetail.jsp?success"+text);

%>
  <li><a href="newsDetail.jsp?link=<%=link%>&title=<%=rs.getString(4)%>"><%=title%></a></li>
<%

}
}
}
catch(Exception e)
{
System.out.print("failed");
} 
%>
 
           <!--   <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
            <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
            <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
            <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
            <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>-->
          </ul>
          <a href="http://www.free-css.com/">Read All Latest News</a> </div>
        <div class="regular_section"> <a target="_blank" href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="" width="88" height="31" vspace="8" border="0" /></a> <a target="_blank" href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="" vspace="8" border="0" /></a> </div>
      </div>
      <div class="tab_section">
        <ul id="countrytabs" class="shadetabs">
          <li><a href="http://www.free-css.com/" rel="health" class="selected">Health</a></li>
          <li><a href="http://www.free-css.com/" rel="entertainment">Entertainment</a></li>
          <li><a href="http://www.free-css.com/" rel="politics">Politics</a></li>
          <li><a href="http://www.free-css.com/" rel="business">Business</a></li>
          <li><a href="http://www.free-css.com/" rel="tech_science">Tech &amp; Science</a></li>
        </ul>
        <div class="tabcontent_section">
          <div id="health" class="tabcontent">
            <div class="topnews"> <img src="images/image_08.jpg" alt="" />
              <h4>Health News</h4>
              <p> Nunc quis sem nec tincidunt. Lorem ipsum dolor sit amet, adipiscing elit. Duis vitae velit sed dui malesuada dignissim. <a href="http://www.free-css.com/">Full Story</a> </p>
            </div>
            <div class="newslist">
              <ul>
                <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
                <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
                <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
                <li><a href="http://www.free-css.com/">Duis mollis aliquet ligula</a></li>
                <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum.</a></li>
                <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum.</a></li>
                <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
              </ul>
              <a href="http://www.free-css.com/">Read All Latest News</a> </div>
          </div>
          <div id="entertainment" class="tabcontent">
            <div class="topnews"> <img src="images/image_12.jpg" alt="" />
              <h4>Entertainment News</h4>
              <p> Duis vitae velit sed dui malesuada dignissim. Lorem ipsum dolor sit amet, adipiscing elit. Nunc quis sem nec tincidunt. <a href="http://www.free-css.com/">Full Story</a> </p>
            </div>
            <div class="newslist">
              <ul>
                <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
                <li><a href="http://www.free-css.com/">Duis mollis aliquet ligula</a></li>
                <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
                <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
                <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
                <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
                <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
              </ul>
              <a href="http://www.free-css.com/">Read All Latest News</a> </div>
          </div>
          <div id="politics" class="tabcontent">
            <div class="topnews"> <img src="images/image_08.jpg" alt="" />
              <h4>Politics News</h4>
              <p> Fusce sollicitudin nisl a lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. <a href="http://www.free-css.com/">Full Story</a> </p>
            </div>
            <div class="newslist">
              <ul>
                <li><a href="http://www.free-css.com/">Duis mollis aliquet ligula</a></li>
                <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
                <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
                <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
                <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
                <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
                <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
              </ul>
              <a href="http://www.free-css.com/">Read All Latest News</a> </div>
          </div>
          <div id="business" class="tabcontent">
            <div class="topnews"> <img src="images/image_12.jpg" alt="" />
              <h4>Business News</h4>
              <p> Pellentesque odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed leo. <a href="http://www.free-css.com/">Full Story</a> </p>
            </div>
            <div class="newslist">
              <ul>
                <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
                <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
                <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
                <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
                <li><a href="http://www.free-css.com/">Duis mollis aliquet ligula</a></li>
                <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
                <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
              </ul>
              <a href="http://www.free-css.com/">Read All Latest News</a> </div>
          </div>
          <div id="tech_science" class="tabcontent">
            <div class="topnews"> <img src="images/image_08.jpg" alt="" />
              <h4>Tech &amp; Science News</h4>
              <p> Fusce sollicitudin nisl a lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. <a href="http://www.free-css.com/">Full Story</a> </p>
            </div>
            <div class="newslist">
              <ul>
                <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
                <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
                <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
                <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
                <li><a href="http://www.free-css.com/">Duis mollis aliquet ligula</a></li>
                <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
                <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
              </ul>
              <a href="http://www.free-css.com/">Read All Latest News</a> </div>
          </div>
        </div>
        <script type="text/javascript">
            var countries=new ddtabcontent("countrytabs")
            countries.setpersist(true)
            countries.setselectedClassTarget("link")
            countries.init()
            </script>
      </div>
    </div>
    <div id="main_rightcol">
      <div class="rcol_sectionwithborder">
        <div id="video_section">
          <h2>Latest Videos</h2>
          <div class="video_box"> <img src="images/image_09.jpg" alt="" /> <a href="http://www.free-css.com/"><span>Play:</span> Lorem ipsum dolor sit amet</a> </div>
          <div class="video_box"> <img src="images/image_10.jpg" alt="" /> <a href="http://www.free-css.com/"><span>Play:</span> Nunc quis sem nec tincidunt</a> </div>
          <div class="video_box"> <img src="images/image_11.jpg" alt="" /> <a href="http://www.free-css.com/"><span>Play:</span> Duis vitae velit sed dui</a> </div>
          <div class="view_all"><a href="http://www.free-css.com/">View All</a></div>
        </div>
      </div>
      <div class="rcol_sectionwithborder">
        <div id="newsletter_section">
          <h2>Subscribe Newsletter</h2>
          <form method="get" action="http://www.free-css.com/">
            <div class="form_row">
              <label>Choose Newsletter</label>
              <select>
                <option>Daily News</option>
                <option>Breaking News</option>
                <option>Sport News</option>
                <option>Entertainment News</option>
              </select>
            </div>
            <div class="form_row">
              <label>Email address</label>
              <input class="inputfield" name="email_address" type="text" id="email_addremss"/>
            </div>
            <input class="button" type="submit" name="Submit" value="Subscribe" />
          </form>
        </div>
      </div>
     
     
     
      <div class="rcol_sectionwithborder">
        <div id="blog_section">
          <h2>Blog Entries</h2>
          <div class="blog_box">
          </div>
          <ul>
            <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
            <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
            <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
            <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
            <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
          </ul>
          </div>
          </div>
           <!--  <h3><a href="http://www.free-css.com/">Quisque rhoncus nulla quis sem</a></h3>
            Posted by <a href="http://www.free-css.com/"><span>Dolor Sit Amet</span></a> in <a href="http://www.free-css.com/"><span>Duis vitae</span></a><br />
            Aliquam tristique lacus in sapien. Suspendisse potenti. Ut sed pede.<br />
            <div class="datetime">15:00 January 25th, 2020</div>
          </div>
          <div class="blog_box">
            <h3><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></h3>
            Posted by <a href="http://www.free-css.com/"><span>Dolor Sit Amet</span></a> in <a href="http://www.free-css.com/"><span>Duis vitae</span></a><br />
            Integer imperdiet odio ac eros. Ut id massa. Nullam nunc. Vivamus sagittis varius lorem.<br />
            <div class="datetime">13:00 January 21st, 2020</div>
          </div>
          <div class="more_button"><a href="http://www.free-css.com/">View All</a></div>
        </div>
      </div>-->
      <div class="rcol_sectionwithborder">
        <div id="poll_section">
          <h2>Poll</h2>
           <ul>
            <li><a href="http://www.free-css.com/">Quisque in diam a justo condimentum</a></li>
            <li><a href="http://www.free-css.com/">Proin vel libero id erat venenatis accumsan</a></li>
            <li><a href="http://www.free-css.com/">Lorem ipsum dolor sit amet</a></li>
            <li><a href="http://www.free-css.com/">Maecenas adipiscing elementum ipsum</a></li>
            <li><a href="http://www.free-css.com/">Nunc blandit orci sit amet risus</a></li>
            <li><a href="http://www.free-css.com/">Cum sociis natoque penatibus et magnis dis</a></li>
          </ul>
          </div>
		  </div>
         <!--  <img src="images/image_08.jpg" alt="" />
          <p> Lorem ipsum nunc quis sem dolor sit amet, consectetuer adipiscing elit. Nunc quis sem nec tellus blandit tincidunt.</p>
          <input type="radio" name="poll" value="yes" checked="checked" />
          Yes <br />
          <input type="radio" name="poll" value="no" />
          No <br />
          <br />
          <input class="button" type="submit" name="Submit" value="Vote" />
          <a href="http://www.free-css.com/">Viwe Result</a> </div>
      </div>
    </div>
  </div> -->
  <div id="footer">
    <div class="footer_leftcol"> Copyright © 2020 <a href="http://www.free-css.com/"><strong>Your Company Name</strong></a> - Designed by <a href="http://www.templatemo.com">Free CSS Templates</a><br />
      <br />
      <p>Lorem ipsum nunc quis sem dolor sit amet, consectetuer adipiscing elit. Nunc quis sem nec tellus blandit tincidunt. Duis mollis aliquet ligula.</p>
    </div>
    <div class="footer_rightcol">
      <div class="footer_subcol"> <a href="http://www.free-css.com/">Mainpage</a><br />
        <a href="http://www.free-css.com/">Company</a><br />
        <a href="http://www.free-css.com/">Advertise</a><br />
        <a href="http://www.free-css.com/">Feedback</a><br />
      </div>
      <div class="footer_subcol"> <a href="http://www.free-css.com/">English</a><br />
        <a href="http://www.free-css.com/">Japanese</a><br />
        <a href="http://www.free-css.com/">Chinese</a><br />
        <a href="http://www.free-css.com/">German</a><br />
        <a href="http://www.free-css.com/">French</a> </div>
      <div class="footer_subcol"> <a href="http://www.free-css.com/">Terms</a><br />
        <a href="http://www.free-css.com/">Privacy</a><br />
        <a href="http://www.free-css.com/">Sitemap</a><br />
        <a href="http://www.free-css.com/">Contact</a><br />
        <a href="http://www.free-css.com/">Help</a> </div>
    </div>
  </div>
</div>
</body>
</html>
