<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
<% session.removeAttribute("log");
   session.invalidate();
%>

<form method="post" action="LoginController">

Name:
<input type="text" name="name"/>
<br>

Password:
<input type="password" name="password"/>
<br>

<input type="submit" value="Submit"/>


</form>

</body>
</html>