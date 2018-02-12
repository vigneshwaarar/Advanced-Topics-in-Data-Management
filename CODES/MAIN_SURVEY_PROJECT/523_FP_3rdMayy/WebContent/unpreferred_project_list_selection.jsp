<%-- unpreferred_project_list_selection.jsp is a page where the list of projects related to the user survey choice is displayed from the 
course_project DB table. Here the user selects 3  PROJECTS WHICH they unPREFERR.
Here the preferred courses rating is been stored in proj_rating table in the DB 
This page is directed from the preferred_project_list_rating.jsp --%>
<html>
<head>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
<h2>CHOOSE ATLEAST 3 PROJECTS WHICH YOU DO NOT PREFERR</h2>
<%! String[] course_sel; 
String userid="";
%>
<center>You have selected: 
<% 
String survey_Name = session.getAttribute("survey_Name").toString();

course_sel = request.getParameterValues("course_sel");

 out.println ("<b>"+survey_Name+"<b>");
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
       String query="select projectname from course_project where courseid = '"+ survey_Name +"'";
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
	window.location.replace("http://localhost:8080/523_FP_3rdMayy/unpreferred_project_list_rating.jsp?param="+chkSelected);
	
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
</html>

<%-- Here the preferred courses rating is been stored in proj_rating table in the DB --%>
<%@ page import="java.sql.*,java.util.*" %>
<html>
<body>
<br><br>
<table align="center" width="300px" border=0>
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
	
	int j=stmt.executeUpdate("insert into Pref_Proj_Rating(username,projectname, overall_rating,domain_rating , storage_rating,easiness_rating) values('"+username+"','"+param_array[(5*i)+1]+"','"+param_array[(5*i)+2]+"','"+param_array[(5*i)+3]+"','"+param_array[(5*i)+4]+"','"+param_array[(5*i)+5]+"')");
	stmt.close();
	con.close();
}
}
catch(Exception e){}
%>

</table>
</body>
</html>