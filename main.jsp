<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<%@ page import="myservlet.LoginBean" %>

<% if (session.getAttribute("log") != null){
	
		LoginBean log = (LoginBean)session.getAttribute("log");
	

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
</head>
<body>
You succesfully Logged in!!
<br>

Hye, Welcome Back <%= log.getName() %>
<br>

<a href="form.jsp">Sign Out</a>

</body>
</html>

<%}%>