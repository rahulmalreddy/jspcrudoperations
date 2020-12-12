<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@ page import = "Dao.UserDao,Bean.User" %>

<%
String id = request.getParameter("id");
User u = UserDao.getRecordById(Integer.parseInt(id));
%>

<center><h1>Edit Form</h1></center>


<form action = "Edit.jsp" method = "post">
<input type = "hidden" name = "id" value ="<%=u.getId()%>"/>


<p> Name:</p>
<input type = "text" name ="name" value = "<%=u.getName()%>"/>
<p> Password: </p>
<input type = "text" name = "password" value="<%=u.getPassword()%>"/>
<p> Email: </p>
<input type = "text"name = "Email" value ="<%=u.getEmail()%>"/>
<p>Sex:</p>
<input type="radio" name="sex" value="male"/>Male   
<input type="radio" name="sex" value="female"/>Female 

<p> Country: </p>
<select name="country">  
<option>India</option>  
<option>Pakistan</option>  
<option>Afghanistan</option>  
<option>Berma</option>  
<option>Other</option>  
</select>  

<input type="submit" value="Edit User"/>


</form>

</body>
</html>