<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
</head>
<body>
<%@page import = Dao.UserDao %>
<jsp:useBean id="u" class ="Bean.User"></jsp:useBean>
<jsp:setProperty property="*" name = "u"/>

<%
int i = UserDao.update(u);

response.sendRedirect("viewallusers.jsp");
%>

</body>
</html>