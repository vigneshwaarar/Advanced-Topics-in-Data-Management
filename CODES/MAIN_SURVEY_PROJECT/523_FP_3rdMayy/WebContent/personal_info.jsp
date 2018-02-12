<%-- personal_info.jsp is a page where the student fills up his personal info and ITMD related courses
This page is directed from the survey_overview.html --%>
<%@ page import="java.sql.*,java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Informations</title>
<style>
body {
background-color: #FFFACD;
}
</style>
<style>

body {
background-color: #FFFACD;
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
</style>
</head>
<div >
<body bgcolor="#ffffff">

<td style="width:427px;">
  <h2 style="color:#156CA4"><font color="black"><b>PERSONAL INFORMATION</b></h2>
 <form id="parFormID">
<table>
<tr><td>
<center><p class = "ex"><big><b>Fill in the personal information form as well are rate the following factors listed below to describe yourself. If the rating is higher, it tells that you are closer to that characteristics.</b></big></p></center>
 <%--age, country , marriage status is been asked here--%> 
</td></tr>
<tr><td style="color:black;"><b>What is your gender?</b></td></tr>
<tr><td style="color:black;"><input type="radio" id="ID_Male" value="Male" style="height:35px; width:35px; vertical-align: middle;" name="gen">Male</td></tr>
<tr><td style="color:black;"><input type="radio" id="ID_Female" value="Female" style="height:35px; width:35px; vertical-align: middle;" name="gen">Female</td></tr>
<tr><td style="color:black;"><b>Select your age group</b></td></tr>
<tr><td style="color:black;"><input type="radio" id="below20" value="Below 20 (20 is not included)" style="height:35px; width:35px; vertical-align: middle;" name="agrp">Below 20 (20 is not included) </td></tr>
<tr><td style="color:black;"><input type="radio" id="20to24" value="Between 20 and 24" style="height:35px; width:35px; vertical-align: middle;" name="agrp">Between 20 and 24</td></tr>
<tr><td style="color:black;"><input type="radio" id="25to30" value="Between 25 and 30" style="height:35px; width:35px; vertical-align: middle;" name="agrp">Between 25 and 30 </td></tr>
<tr><td style="color:black;"><input type="radio" id="above30" value="Older than 30 (30 is not included)"  style="height:35px; width:35px; vertical-align: middle;"name="agrp">Older than 30 (30 is not included)</td></tr>

<tr><td style="color:black;"><b>Marriage Status</b></td></tr>
<tr><td style="color:black;"><input type="radio" id="ID_Single" value="Single" style="height:35px; width:35px; vertical-align: middle;" name="mstatus">Single</td></tr>
<tr><td style="color:black;"><input type="radio" id="ID_Married" value="Married" style="height:35px; width:35px; vertical-align: middle;" name="mstatus">Married</td></tr>

<tr><td><table>
<tr><td style="color:black;"><b>Home Country :</b></td><td><input type="text" id="home_country" name="home_country"></td></tr>
</table></td></tr>
<tr><td colspan="2">
<div style="color:black;padding:20px;">
 <%--ratings on characteristics is been asked here --%> 
<h2><b>Openness to experience: </b></h2>
  <center><p class = "ex"><big><b>This trait features characteristics such as imagination and insight, and those high in this trait also tend to have a broad range of interests. It reflects curiosity, creativity and a preference for novelty and variety a person has.</b></big></p></center>
<h2>conscientiousness: </h2>
  <center><p class = "ex"><big><b>This trait features characteristics such as imagination and insight, and those high in this trait also tend to have a broad range of interests. It reflects curiosity, creativity and a preference for novelty and variety a person has.</b></big></p></center>
<h2>Extraversion: </h2>
  <center><p class = "ex"><big><b>This trait features characteristics such as imagination and insight, and those high in this trait also tend to have a broad range of interests. It reflects curiosity, creativity and a preference for novelty and variety a person has.</b></big></p></center>
<h2>Agreeableness: </h2>
 <center><p class = "ex"><big><b>This trait features characteristics such as imagination and insight, and those high in this trait also tend to have a broad range of interests. It reflects curiosity, creativity and a preference for novelty and variety a person has.</b></big></p></center>
<h2>Neuroticism: </h2>
  <center><p class = "ex"><big><b>This trait features characteristics such as imagination and insight, and those high in this trait also tend to have a broad range of interests. It reflects curiosity, creativity and a preference for novelty and variety a person has.</b></big></p></center>

</div>
</td></tr>
<tr><td><table>
<tr><td style="color:black;"><b>Openness to experience: </b></td><td>
			<input type="radio" id="OE_rating1" name="rating" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="OE_rating2" name="rating" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="OE_rating3" name="rating" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="OE_rating4" name="rating" value="4" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="OE_rating5" name="rating" value="5" style="height:35px; width:35px; vertical-align: middle;" class="star"></td></tr>
<tr><td style="color:black;"><b>Conscientiousness: </b></td><td>
			<input type="radio" id="C_rating1" name="conscientiousness" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="C_rating2" name="conscientiousness" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="C_rating3" name="conscientiousness" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="C_rating4" name="conscientiousness" value="4" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="C_rating5" name="conscientiousness" value="5" style="height:35px; width:35px; vertical-align: middle;" class="star"></td></tr>
<tr><td style="color:black;"><b>Extraversion: </b></td><td>
			<input type="radio" id="E_rating1" name="extraversion" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="E_rating2" name="extraversion" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="E_rating3" name="extraversion" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="E_rating4" name="extraversion" value="4" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="E_rating5" name="extraversion" value="5" style="height:35px; width:35px; vertical-align: middle;" class="star"></td></tr>
<tr><td style="color:black;"><b>Agreeableness: </b></td><td>
			<input type="radio" id="A_rating1" name="agreeableness" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="A_rating2" name="agreeableness" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="A_rating3" name="agreeableness" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="A_rating4" name="agreeableness" value="4" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="A_rating5" name="agreeableness" value="5" style="height:35px; width:35px; vertical-align: middle;" class="star"></td></tr>
<tr><td style="color:black;"><b>Neuroticism: </b></td><td>
			<input type="radio" id="N_rating1" name="neuroticism" value="1" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="N_rating2" name="neuroticism" value="2" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="N_rating3" name="neuroticism" value="3" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="N_rating4" name="neuroticism" value="4" style="height:35px; width:35px; vertical-align: middle;" class="star">
            <input type="radio" id="N_rating5" name="neuroticism" value="5" style="height:35px; width:35px; vertical-align: middle;" class="star"></td></tr>
  </table> 
  </td></tr>
<%--Course details  is been asked here --%>           
<tr><td colspan="2">
<table>
<tr>
	<td> 
		<input TYPE=checkbox id="chk_523" name=course_sel onchange="handleChange(this);" VALUE=ITMD_523>
		<input type="hidden" id="chkHidden_523" name="checked_523">
	</td>	 
	<td><b>	
		ITMD 523 
	</b></td>
</tr>

<tr>
	<td> 
		<input TYPE=checkbox id="chk_525" name=course_sel onchange="handleChange(this);" VALUE=ITMD_525>
		<input type="hidden" id="chkHidden_525" name="checked_525">
	</td>	 
	<td><b>	
		ITMD 525
	</b></td>
</tr>

<tr>
	<td> 
		<input TYPE=checkbox id="chk_527" name=course_sel onchange="handleChange(this);" VALUE=ITMD_527>
		<input type="hidden" id="chkHidden_527" name="checked_527">
	</td>	 

	<td><b>	
		ITMD 527
	</b></td>
</tr>
</table>
</td>
</tr>
<tr><td style="color:black;"><input type="Submit" onclick="Validation();" value="Submit"></td></tr>

</table>
</form>
</td>


</div>
</html>

<script> 
<%--validating if the user has entered all the fields --%> 
function Validation(){
	/* action="personal_info_dao.jsp"*/
	var strMessage = "";
	var male = document.getElementById("ID_Male");
	var female = document.getElementById("ID_Female");
	var age1 = document.getElementById("below20");
	var age2 = document.getElementById("20to24");
	var age3 = document.getElementById("25to30");
	var age4 = document.getElementById("above30");
	var Married = document.getElementById("ID_Married");
	var Single = document.getElementById("ID_Single");
	var homecountry = document.getElementById("home_country").value;
	
	var OE_rating1 = document.getElementById("OE_rating1");
	var OE_rating2 = document.getElementById("OE_rating2");
	var OE_rating3 = document.getElementById("OE_rating3");
	var OE_rating4 = document.getElementById("OE_rating4");
	var OE_rating5 = document.getElementById("OE_rating5");
	
	var C_rating1 = document.getElementById("C_rating1");
	var C_rating2 = document.getElementById("C_rating2");
	var C_rating3 = document.getElementById("C_rating3");
	var C_rating4 = document.getElementById("C_rating4");
	var C_rating5 = document.getElementById("C_rating5");
	
	var E_rating1 = document.getElementById("E_rating1");
	var E_rating2 = document.getElementById("E_rating2");
	var E_rating3 = document.getElementById("E_rating3");
	var E_rating4 = document.getElementById("E_rating4");
	var E_rating5 = document.getElementById("E_rating5");
	
	var A_rating1 = document.getElementById("A_rating1");
	var A_rating2 = document.getElementById("A_rating2");
	var A_rating3 = document.getElementById("A_rating3");
	var A_rating4 = document.getElementById("A_rating4");
	var A_rating5 = document.getElementById("A_rating5");
	
	var N_rating1 = document.getElementById("N_rating1");
	var N_rating2 = document.getElementById("N_rating2");
	var N_rating3 = document.getElementById("N_rating3");
	var N_rating4 = document.getElementById("N_rating4");
	var N_rating5 = document.getElementById("N_rating5");
	
	var chk_523 = document.getElementById("chk_523");
	var chk_525 = document.getElementById("chk_525");
	var chk_527 = document.getElementById("chk_527");
	
	if(!male.checked && !female.checked)
	{
		strMessage = strMessage +"Please Select Gender !\n";
	}
	
	if(!age1.checked && !age2.checked && !age3.checked && !age4.checked)
	{
		strMessage = strMessage +"Please select age group !\n";
	}
	
	if(!Married.checked && !Single.checked)
	{
		strMessage = strMessage +"Please Select Marital status !\n";
	}
	
	if(homecountry == null || homecountry=="")
	{
		strMessage = strMessage +"Please enter Home Country !\n";
	}
	
	if(!OE_rating1.checked && !OE_rating2.checked && !OE_rating3.checked && !OE_rating4.checked && !OE_rating5.checked )
	{
		strMessage = strMessage +"Please Select Openness to experience Rating !\n";
	}
	if(!C_rating1.checked && !C_rating2.checked && !C_rating3.checked && !C_rating4.checked && !C_rating5.checked )
	{
		strMessage = strMessage +"Please Select Conscientiousness Rating !\n";
	}
	if(!E_rating1.checked && !E_rating2.checked && !E_rating3.checked && !E_rating4.checked && !E_rating5.checked )
	{
		strMessage = strMessage +"Please Select Extraversion Rating !\n";
	}
	if(!A_rating1.checked && !A_rating2.checked && !A_rating3.checked && !A_rating4.checked && !A_rating5.checked )
	{
		strMessage+= "Please Select Agreeableness Rating !\n";
	}
	if(!N_rating1.checked && !N_rating2.checked && !N_rating3.checked && !N_rating4.checked && !N_rating5.checked )
	{
		strMessage+= "Please Select Neuroticism Rating \n!";
	}
	if(!chk_523.checked && !chk_525.checked && !chk_527.checked)
	{
		strMessage+= "Please Select Course Rating !\n";
	}
	
	if(strMessage != "")
		{
	alert(strMessage);
		}
	else
		{
		
			var elem = document.getElementById("parFormID");
		     elem.setAttribute("action","personal_info_dao.jsp");
	         elem.submit();
		   
		}
}
function handleChange(checkbox) {
	
	var elem1 = document.getElementById("chkHidden_523");
	var elem2 = document.getElementById("chkHidden_525");
	var elem3 = document.getElementById("chkHidden_527");
	
    if(checkbox.checked == true)
    {
		if(checkbox.value == 'ITMD_523')
			elem1.value = checkbox.value;
		if(checkbox.value == 'ITMD_525')
			elem2.value = checkbox.value;
		if(checkbox.value == 'ITMD_527')
			elem3.value = checkbox.value;
  	}
    else
    {
    	if(checkbox.value == 'ITMD_523')
    		elem1.value = ' ';
    	if(checkbox.value == 'ITMD_525')
    		elem2.value = ' ';
    	if(checkbox.value == 'ITMD_527')
    		elem3.value = ' ';
    }
    
}
</script>
</body>
</html>