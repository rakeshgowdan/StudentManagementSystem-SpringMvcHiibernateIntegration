<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Student Management System</title>
</head>
<body>
<div align="center">
    <h2>Student Management</h2>
    <form method="get" action="search">
    <div class="form-group">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" class="btn btn-primary" value="Search"/>
        </div>
    </form>
    <h3><a href="${contextPath}/new">New Student</a></h3>
    <table  class="table table-bordered table-striped">
        <tr>
            <th >ID</th>
            <th>Name</th>
            <th>Mobile</th>
            <th>Course</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listStudent}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.mobile}</td>
            <td>${student.course}</td>
            <td>
                <a href="${contextPath}/edit?id=${student.id}">Edit</a>
                &nbsp;&nbsp;&nbsp;
                <a href="${contextPath}/delete?id=${student.id}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>