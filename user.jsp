<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<html>
<head>
<title></title>
</head>
<body>
<h2>User Information</h2>
      <form:form method = "POST" action = "RegisterController">
         <table>
         	<tr>
               <td><form:label path = "first_name">First Name:</form:label></td>
               <td><form:input path = "first_name" /></td>
            </tr>
            <tr>
               <td><form:label path = "last_name">Last Name:</form:label></td>
               <td><form:input path = "last_name" /></td>
            </tr>
            <tr>
               <td><form:label path = "username">User Name:</form:label></td>
               <td><form:input path = "username" /></td>
            </tr>
            <tr>
               <td><form:label path = "password">Password:</form:label></td>
               <td><form:password path = "password" /></td>
            </tr>  
            <tr>
               <td><form:label path = "address">Address:</form:label></td>
               <td><form:textarea path = "address" rows = "5" cols = "30" /></td>
            </tr>  
            <tr>
               <td><form:label path = "contact">Contact Number:</form:label></td>
               <td><form:input path = "contact" /></td>
            </tr>
            
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>  
      </form:form>

</body>
</html>

