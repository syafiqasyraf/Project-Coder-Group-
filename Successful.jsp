<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="data" class="JB.data" scope="page"/>

<jsp:setProperty name="data" property="*" />

Successfully Booked !!
<jsp:getProperty name="data" property="venueid" /><br>

</body>
</html>