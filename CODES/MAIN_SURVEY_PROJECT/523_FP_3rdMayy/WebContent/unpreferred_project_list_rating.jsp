<%-- unpreferred_project_list_rating.jsp is a page where the list of 3 projects selected are to be rated .
This page is directed from the unpreferred_project_list_selection.jsp --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UNPREFERRED PROJECT RATING</title>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
<h1>GIVE RATINGS TO THE PROJECT YOU DISLIKE, LEAVE LOWER RATINGS IF U DISLIKE THEM MORE</h1>
<table border="1">	
<tr >
  <th rowspan="2">PROJ NAME</th>
  <th>OVERALL RATING</th>
  <th>DOMAIN RATING</th>
  <th>STORAGE RATING</th>
  <th>EASINESS RATING</th>
</tr>
<tr>

  <td>|---1----||---2---||---3---|</td>
  <td>|---1----||---2---||---3---|</td>
  <td>|---1----||---2---||---3---|</td>
  <td>|---1----||---2---||---3---|</td>
</tr>

<%! String[] proj_sel; %> 
<% 
String proj_Selected = request.getParameter("param");
//String proj_Selected = "a,b";
proj_sel = proj_Selected.split(" , ");
//proj_sel = proj_Selected.split("*");

for(int i=0; i< proj_sel.length; i++)
{
	%>
<tr>
	<td><input type="hidden" id="s<%=i%>" name="<%= proj_sel[i]%>" value="<%= proj_sel[i]%>"><%= proj_sel[i]%></td>
    <td><input type="radio" id="3overall_rating<%=i%>" name="overall_rating<%=i%>" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
        <input type="radio" id="4overall_rating<%=i%>" name="overall_rating<%=i%>" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
        <input type="radio" id="5overall_rating<%=i%>" name="overall_rating<%=i%>" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
    </td>
    <td><input type="radio" id="3domain_rating<%=i%>" name="domain_rating<%=i%>" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
	    <input type="radio" id="4domain_rating<%=i%>" name="domain_rating<%=i%>" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
	    <input type="radio" id="5domain_rating<%=i%>" name="domain_rating<%=i%>" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
	</td>
    <td><input type="radio"  id="3storage_rating<%=i%>" name="storage_rating<%=i%>" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
	    <input type="radio"  id="4storage_rating<%=i%>" name="storage_rating<%=i%>" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
	    <input type="radio"  id="5storage_rating<%=i%>" name="storage_rating<%=i%>" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
	</td>
    <td><input type="radio" id="3easiness_rating<%=i%>" name="easiness_rating<%=i%>" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
	    <input type="radio" id="4easiness_rating<%=i%>" name="easiness_rating<%=i%>" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
	    <input type="radio" id="5easiness_rating<%=i%>" name="easiness_rating<%=i%>" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
	</td>
</tr>
<%}%>

</table>
<table><tr><td>
<input type="Submit" value="Submit"  onclick="chk(<%=proj_sel.length%>);">
</td></tr></table>

<script>
function chk(cnt)
{
	 //var hdnval = '';
	 var arr = new Array(cnt);
	 var chkSelected ='';
	 for(i=0; i < cnt; i++)
	 {
		 var hdn = document.getElementById("s" + i);
		 //hdnval = hdn.value;
		 var overall_rating3 = document.getElementById("3overall_rating"+i);
		 var overall_rating4 = document.getElementById("4overall_rating"+i);
		 var overall_rating5 = document.getElementById("5overall_rating"+i);
		 var domain_rating3 = document.getElementById("3domain_rating"+i);
		 var domain_rating4 = document.getElementById("4domain_rating"+i);
		 var domain_rating5 = document.getElementById("5domain_rating"+i);
		 var storage_rating3 = document.getElementById("3storage_rating"+i);
		 var storage_rating4 = document.getElementById("4storage_rating"+i);
		 var storage_rating5 = document.getElementById("5storage_rating"+i);
		 var easiness_rating3 = document.getElementById("3easiness_rating"+i);
		 var easiness_rating4 = document.getElementById("4easiness_rating"+i);
		 var easiness_rating5 = document.getElementById("5easiness_rating"+i);
		 
		 chkSelected = chkSelected +  ' , ' + hdn.value;
		 chkSelected = chk_text(overall_rating3,chkSelected);
		 chkSelected = chk_text(overall_rating4,chkSelected);
		 chkSelected = chk_text(overall_rating5,chkSelected);
		 
		 chkSelected = chk_text(domain_rating3,chkSelected);
		 chkSelected = chk_text(domain_rating4,chkSelected);
		 chkSelected = chk_text(domain_rating5,chkSelected);
		 chkSelected = chk_text(storage_rating3,chkSelected);
		 chkSelected = chk_text(storage_rating4,chkSelected);
		 chkSelected = chk_text(storage_rating5,chkSelected);
		 chkSelected = chk_text(easiness_rating3,chkSelected);
		 chkSelected = chk_text(easiness_rating4,chkSelected);
		 chkSelected = chk_text(easiness_rating5,chkSelected);
		 
	 }
	 window.location.replace("http://localhost:8080/523_FP_3rdMayy/survey_complete_page.jsp?param="+chkSelected);

	for(i=0; i < cnt; i++)
	{
	}
	
}

function chk_text(rating,chkSelected)
{
	if(rating.checked)
	{
	 	chkSelected = chkSelected + ' , ' +rating.value;
	}

return chkSelected;	

}
function radioLoop(elem)
{
	for(i=0; i < elem.length; i++)
	{
		if(elem[i].checked)
		{
			return elem[i].value;
		}
	}
	
	return 0;
}
</script>
</body>
</html>