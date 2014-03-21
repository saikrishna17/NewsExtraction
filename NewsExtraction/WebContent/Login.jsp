<%@ page import="java.sql.*"%>
<%! 
Connection con;
Statement st;
ResultSet rs;%>
<html>
 <head>
  <title> New Document </title>
  
 </head>

 <body> 
 <%
 try
 {
 int  flag=0;
	
	String a,b,c,d,message;
	session.setAttribute("name",null);

String user=request.getParameter("username");
String pass=request.getParameter("pswrd");
session.setAttribute("username",user);

	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","sahithi");
	st=con.createStatement();
	rs=st.executeQuery("select * from login");
	
	while(rs.next())
    {
    	a=rs.getString(1);
    	b=rs.getString(2);
    	 System.out.println(a);
    	if(user.equals(a) && pass.equals(b))	
        {
    		System.out.println("1");
    		flag=1;
        	session.setAttribute("name",a);
            System.out.println(a);
        }
           else if(user.equals(a))
	        {
	        message="Incorrect password";
	        response.sendRedirect("sample.jsp?error="+message);
	        break;
	        }
	        }
	      if(flag==0)
	      {
	        message="Incorrect UserName and Password" ;
	        response.sendRedirect("sample.jsp?error="+message);
	      } 
	      if(flag==1)
	      {
	        message="Welcome"+" "+user ;
	        response.sendRedirect("sample.jsp?error="+message);
	      } 
	       
           con.close();	
        }
    catch(Exception e){
    System.out.println(e);
}
%>
            
        	
	</body>
</html>