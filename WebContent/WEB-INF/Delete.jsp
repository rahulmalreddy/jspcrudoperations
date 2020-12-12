<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = Dao.UserDao %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Page</title>
</head>
<body>
<jsp:useBean id ="u" class="Bean.User"></jsp:useBean>
<jsp:setProperty property ="*" name = "u"/>

<% int i = UserDao.deleteUser(u) ;
response.sendRedirect("viewallusers.jsp");
%>


</body>
</html>