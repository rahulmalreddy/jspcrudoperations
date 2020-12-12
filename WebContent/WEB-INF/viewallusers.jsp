<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
</head>
<body>
<%@ page import= "Bean.User,Dao.UserDao,java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Users List</h1>

<%
List<User> list =UserDao.getAllRecords(); 
request.setAttribute("list",list);
%>

<table border = "1" width = "90%">
<tr>
<th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th>
</tr>
<c:forEach items = "$(list)" var = "u">
<tr>
<td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
<td><a href= "Editform.jsp?id=${u.getId()}"></a></td>
<td><a href= "Delete.jsp?id=${u.getId()}"></a></td>
</tr>
</c:forEach>
</table>

<br>
<p> <a href = "registerform.jsp"></a></p>

</body>
</html>