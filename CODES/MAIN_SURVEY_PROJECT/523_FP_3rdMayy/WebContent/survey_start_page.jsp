<%-- survey_start_page.jsp is a survey start page, here the user_personal_infos table is validated weather 
if the user is signing in for the first time or after the first time, if the user signs in foe the first 
time he will be directed to the personal info page else he will be directed to the start survey page  .
This page is directed from the login.java from the servlet--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
<style>
body {
background-color: #FFFACD;
}

.header img {
  float: left;
  
  width: 100px;
  height: 100px;
  background: #555;
}

.header h1 {
  position: relative;
  top: 18px;
  right: 10px;
}
div.cities {
    height: 10000px;
    width: 1000px;

    top: 20%;
    left: 45%;
    margin-top: -100px;
    margin-left: -400px;
} 
p.ex {
    height: 80px;
    width: 1000px;
}
h2 {
    text-align: center;
}
#loadingDiv{
  position:fixed;
  top:0px;
  right:0px;
  width:100%;
  height:80%;
  background-color:#666;
  background-repeat:no-repeat;
  background-position:center;
  z-index:10000000;
  opacity: 0.4;
  filter: alpha(opacity=40); /* For IE8 and earlier */
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<table>
<tr>
<td align="center">
<div  class="header">
  <img src="iit.PNG" alt="logo" />
</div>
</td>
<td>
<div  class="header">
<h1>WELCOME TO SURVEY SYSTEM</h1>
</div>
</td>
<%-- Here the user_personal_infos table is validated weather 
if the user is signing in for the first time or after the first time, if the user signs in foe the first 
time he will be directed to the personal info page else he will be directed to the start survey page  --%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<tr><td colspan="2">
<div align="center">
<form method="post" >

   <%
   try
   {
   String username="";
username=session.getAttribute("userName").toString();
       Class.forName("com.mysql.jdbc.Driver");
       String query="select GENDER from user_personal_infos where name = '" + username +"'";
       Connection conn=DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
      
       if(rs.next())       
        {  
    	   %> 
    	   <h2><font color="black">Please continue with the survey</h2>
    	   <input type=button onClick="parent.location='Select_survey.jsp'" value='click here'>   
           <%
       }
       else { 
    	  %> 
    	  <h2><font color="black">Please fill in your personal information</h2>
   	   <input type=button onClick="parent.location='survey_overview.html'" value='click here'>
          <%
      }
   %>
 
</FORM>
</div>
</td></tr></table>
</BODY>
</HTML>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>`