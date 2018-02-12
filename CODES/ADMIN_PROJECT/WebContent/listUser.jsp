<%-- listUser.jsp is a page where the all the entered projects corresponding to the course is available,
user can add projects here --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All Users</title>
<style>
body {
background-color: #FFFACD;
}
</style>
</head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>PROJECT Id</th>
                <th>PROJECT NAME</th>
                <th>PROJECT STATUS</th>
                <th>PROJECT URL DESCR</th>
                <th>COURSE ID</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.projectid}" /></td>
                    <td><c:out value="${user.projectname}" /></td>
                    <td><c:out value="${user.projectstatus}" /></td>
                    <td><c:out value="${user.url_description}" /></td>
                    <td><c:out value="${user.courseid}" /></td>


                    <td><a href="UserController?action=edit&projrctId=<c:out value="${user.projectid}"/>">Update</a></td>
                    <td><a href="UserController?action=delete&projrctId=<c:out value="${user.projectid}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="UserController?action=insert">Add PROJECT</a></p>
</body>
</html>