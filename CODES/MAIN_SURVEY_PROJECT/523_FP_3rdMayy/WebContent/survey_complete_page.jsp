<%-- survey_complete_page.jsp is a page where the user is notified that he has completed the survey.
Here the unpreferred courses rating is been stored in low_proj_rating table in the DB 
This page is directed from the unpreferred_project_list_rating.jsp --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Survey Successfully Completed </title>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
<div style="position: fixed ;bottom:550px;left:600px">
<p>Thank You, Your survey is compete </p>
</div>
</body>
</html>

<%@ page import="java.sql.*,java.util.*" %>
<html>
<body>
<br><br>
<table align="center" width="300px" border=0>
<%-- Here the unpreferred courses rating is been stored in low_proj_rating table in the DB--%>
<%
String username="";
username=session.getAttribute("userName").toString();
String param = request.getParameter("param");
String[] param_array = param.split(" , ");
int proj_count = (param_array.length-1)/5;
String str="";

try {
for(int i=0; i<proj_count;i++)
{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
	
	Statement stmt = con.createStatement();
	int j=stmt.executeUpdate("insert into UnPref_Proj_Rating(username,projectname, overall_rating,domain_rating , storage_rating,easiness_rating) values('"+username+"','"+param_array[(5*i)+1]+"','"+param_array[(5*i)+2]+"','"+param_array[(5*i)+3]+"','"+param_array[(5*i)+4]+"','"+param_array[(5*i)+5]+"')");
	stmt.close();
	con.close();
}
}
catch(Exception e){}
%>

</table>
</body>
</html>