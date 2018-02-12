<%-- personal_info_dao.jsp is a page where the student personal info in been inserted into the user_personal_infos DB table and 
the course details is inserted into the user_courses table
This page is directed from the personal_info.jsp --%>
<HTML>

<%

String select[] = request.getParameterValues("id"); 
if (select != null && select.length != 0) {
out.println("You have selected: ");
for (int i = 0; i < select.length; i++) {
out.println(select[i]); 
	}
}
%>

<%@ page import="java.sql.*,java.util.*" %>

<body>
<br><br>
<table align="center" width="300px" border=0>
<%
String name="";
name=session.getAttribute("userName").toString();
String GENDER=request.getParameter("gen");
String AGE_GRP=request.getParameter("agrp");
String MARRIAGE_STATUS=request.getParameter("mstatus");
String COUNTRY=request.getParameter("home_country");
String course_523 = "";
String course_525 = "";
String course_527 = "";

String Open_to_exp = request.getParameter("rating");
String Conscientiousness = request.getParameter("conscientiousness");
String Extraversion = request.getParameter("extraversion");
String Agreeableness  = request.getParameter("agreeableness");
String Neuroticism = request.getParameter("neuroticism");

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
Statement stmt = con.createStatement();

String insertInfo = "";
String insertcourse1= "";
String insertcourse2= "";
String insertcourse3= "";
insertInfo = "insert into user_personal_infos(name, GENDER , AGE_GRP , MARRIAGE_STATUS,COUNTRY, Open_to_exp , Conscientiousness,Extraversion, Agreeableness, Neuroticism) values('"+name+"','"+GENDER+"','"+AGE_GRP+"','"+MARRIAGE_STATUS+"','"+COUNTRY+"','"+Open_to_exp+"','"+Conscientiousness+"','"+Extraversion+"','"+Agreeableness+"','"+Neuroticism+"')";
int j=stmt.executeUpdate(insertInfo);
stmt.close();
con.close();
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con1 = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
Statement stmt1 = con1.createStatement();
if(request.getParameter("checked_523") != "")
{
course_523 = request.getParameter("checked_523");
insertcourse1= "insert into user_courses (userName, courseID) values ('"+name+"','" + course_523 + "');";
int k=stmt1.executeUpdate(insertcourse1);
}
stmt1.close();
con1.close();
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con2 = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
Statement stmt2 = con2.createStatement();
if(request.getParameter("checked_525") != "")
{
course_525 = request.getParameter("checked_525");
insertcourse2= "insert into user_courses (userName, courseID) values ('"+name+"','" + course_525 + "');";
int l=stmt2.executeUpdate(insertcourse2);
}
stmt2.close();
con2.close();
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con3 = DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
Statement stmt3 = con3.createStatement();
if(request.getParameter("checked_527") != "")
{
course_527 = request.getParameter("checked_527");
insertcourse3= "insert into user_courses (userName, courseID) values ('"+name+"','" + course_527 + "');";
int m=stmt3.executeUpdate(insertcourse3);
}
stmt3.close();
con3.close();

request.getServletContext()
.getRequestDispatcher("/Select_survey.jsp").forward(request, response);

}
catch(Exception e){}
%>
</table>
</body>
</html>