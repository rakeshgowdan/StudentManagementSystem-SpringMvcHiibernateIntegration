<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>New Student</title>
</head>
<body>
    <div align="center">
        <h2>New Student</h2>

        <form:form action="save" method="post" modelAttribute="customer">
        <div class="form-group">
            <table  class="table table-striped">
                <tr>
                    <td >Name: </td>
                    <td><form:input path="name" class="form-control"/></td>
                </tr>
                <tr>
                    <td>Mobile: </td>
                    <td><form:input path="mobile" class="form-control"/></td>
                </tr>
                <tr>
                    <td>Course: </td>
                    <td><form:input path="course" class="form-control"/></td>
                </tr>    
                <tr>
                    <td colspan="2"><input type="submit" class="btn btn-info" value="Save"></td>
                </tr>                    
            </table>
             </div>
        </form:form>
       
    </div>
</body>
</html>