<%-- preferred_project_list_selection.jsp is a page where the list of projects related to the user survey choice is displayed from the 
course_project DB table. Here the user selects 3  PROJECTS WHICH they PREFERR.
This page is directed from the survey_start.jsp --%>
<html>
<head>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
<h2>CHOOSE ATLEAST 3 PROJECTS WHICH YOU PREFERR</h2>
<%! String[] course_sel; 
String userid="";
%>
<center>You have selected: 
<% 
String survey_Name = request.getParameter("param");

String CourseName = "";
session.setAttribute("CourseName",survey_Name);

course_sel = request.getParameterValues("course_sel");
 if (course_sel != null) 
 {
    for (int i = 0; i < course_sel.length; i++) 
    {
  	   out.println ("<b>"+course_sel[i]+ "<b>");
    }
 }
 else out.println ("<b>"+survey_Name+"<b>");
%>
</center>
</body>
</html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<table border="2">
   <tr>
        <td>Project Name</td>
   </tr>

   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String query="select projectname from course_project where courseid = '"+survey_Name+"'";
       Connection conn=DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       int count=0;
       while(rs.next())
       {
    	   count++;
    	   String value = rs.getString("projectname");
    	   %> 
    	   <tr><td> 
		<input TYPE=checkbox name="myCB" name=proj_sel VALUE ="<%=value%>">
		</td><td><%out.println(rs.getString("projectname")); %></td></tr>

	<%
       }
    %>
   </table>
   <INPUT TYPE="hidden" id="hdnValue"> 
<br> <INPUT TYPE=submit name=submit id="save-btn" onclick="chk();" Value="Submit">
</center>

<script>
function chk()
{
	var chkbox = document.getElementsByName("myCB");
	var chkSelected = '';
	
	for(i=0; i < chkbox.length; i++)
	{
		if(chkbox[i].checked)
		{
			if(chkSelected == '')
				chkSelected = chkbox[i].value;
			else
				chkSelected = chkSelected + ' , ' + chkbox[i].value;
		}
	}
	window.location.replace("http://localhost:8080/523_FP_3rdMayy/preferred_project_list_rating.jsp?param="+chkSelected);
}
function chkbxChecked(values)
{
	var hdnValue = document.getElementsById("hdnValue"); 
	var count = 0;
	var chkbox = document.forms["myname"]["myCB"];
	 
	var str = '';
	for(j = 0; j < chkbox.length; j++)
	{
		if (chkbox[i].type== "checkbox" && chkbox[i].checked)
		{
			count++;
		}
	}

	alert(count);
	
	var numberOfChBox = $('.publish').length;
    var checkArray = new Array(); 

    for(i = 1; i <= numberOfChBox; i++) {

        if($('#chkBox' + i).is(':checked')) {
            checkArray[i] = 1;  
        } else {
        checkArray[i] = 0;
        }
    }
    alert(checkArray);
    
    window.location.replace("http://localhost:8080/523_FP/proj.jsp");
}

$('#save-btn').click(function(evt){
    evt.preventDefault();

    var numberOfChBox = $('.publish').length;
    var checkArray = new Array(); 

    for(i = 1; i <= numberOfChBox; i++) {

        if($('#chkBox' + i).is(':checked')) {
            checkArray[i] = 1;  
        } else {
        checkArray[i] = 0;
        }
    }
    alert(checkArray);
});
</script>
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