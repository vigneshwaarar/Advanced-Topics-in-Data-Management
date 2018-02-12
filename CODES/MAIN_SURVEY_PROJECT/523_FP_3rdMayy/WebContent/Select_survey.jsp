<%-- Select_suevey.jsp is a page where the survey related to the user selection is displayed and redirects to the corresponding survey page
Here the user is validated if the user has taken up the survey or he is yet to take.
This page is directed from the personal_info_dao.jsp or from the survey_start_page.jsp --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Surveys available</title>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
<table><tr><td width="100%" align="center">
<h1>Please click on the below links to open the survey</h1>
</td></tr></table>
<%! int i=0; %>
<%
String name="";
name=session.getAttribute("userName").toString();

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");

Statement stmt = con.createStatement();
String query = "SELECT COURSEID FROM USER_COURSES WHERE USERNAME='"+ name +"';";
ResultSet rs=stmt.executeQuery(query);
ArrayList<Object> rows = new ArrayList<Object>();
	if(rs != null)       
	{
		while (rs.next()) 
		{
			rows.add(rs.getObject(1));
		}
	}

	// Close ResultSet 
	rs.close();
	stmt.close();
	con.close();
	
	String Comp="";
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 Connection con1 = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");

	 Statement stmt1 = con1.createStatement();
	 String query1 = "SELECT * FROM proj_rating WHERE USERNAME='"+ name +"';";
	 ResultSet rs1=stmt1.executeQuery(query1);
	 if(rs1 != null && rs1.next() == true )       
	 {
	 	 Comp = " Survey ------- Completed. Click here to restart this survey";	
	 }
	 else
	 {
		 Comp = " Survey ------- Incomplete. Click here to start this survey";
	 }

		// Close ResultSet 
		rs1.close();
		stmt1.close();
		con1.close(); 
	%>
	<table>
	<% 
	for(i=0; i< rows.size(); i++)
	{
	 String survey_Name = "";
	 
	 session.setAttribute("survey_Name",rows.get(i).toString());
	 
	%>
	<tr><td>
	<input type="submit" onclick="SurveySelected(this)" name="Survey_<%= i%>" value="<% out.println(rows.get(i).toString() );
	%>" /> <%= Comp%>
	</td></tr>
	<% 
	}
	%>
	</table>
	<%
	
}
catch(Exception e){}
%>
<script>
function SurveySelected(elem)
{
	window.location.replace("http://localhost:8080/523_FP_3rdMayy/preferred_project_list_selection.jsp?param="+elem.value);
}
</script>
</body>
</html>

