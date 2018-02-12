<%-- User.jsp is a page where the the user can enter details of each project which he wants to add / update --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Add new user</title>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
    <script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>

    <form method="POST" action='UserController' name="frmAddUser">
        PROJECT ID : <input type="text" readonly="readonly" name="projectid"
            value="<c:out value="${user.projectid}" />" /> <br /> 
        PROJECT Name : <input
            type="text" name="projectname"
            value="<c:out value="${user.projectname}" />" /> <br /> 
        PROJECT STATUS : <input
            type="text" name="projectstatus"
            value="<c:out value="${user.projectstatus}" />" /> <br /> 
        PROJECT URL DESCR : <input
            type="text" name="url_description"
            value="<c:out value="${user.url_description}" />" /> <br />  
        COURSE ID : <input type="text" name="courseid"
            value="<c:out value="${user.courseid}" />" /> <br /> <input
            type="submit" value="Submit" />
    </form>
</body>
</html>