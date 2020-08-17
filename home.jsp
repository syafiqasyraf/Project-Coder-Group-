<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style type="text/css">
	.container{overflow:hidden}
	.tab{float:left;}
	.tab-2{margin-left: 50px}
	.tab-2 input{display:block; margin-bottom: 10px}
</style>

<title>Insert title here</title>
</head>
<body>

Welcome <%=request.getParameter("uname")%>;

<h1>Welcome to Our Venue Reservation System</h1>

<ul>
<li>We have 30 venue to book for conferences and seminar</li>
<li>Venue operating from 8am to 11pm only.</li>
<li>First come first served basis</li>
</ul>
<table id="table" border="1">
            
            <tr>
                <th>VenueID</th>
                <th>Venue Name</th>
                <th>Capacity</th>
                <th>Availability</th>
                
            </tr>
            <!--
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
         
            -->
    </table>
    <br></br>
		
	<form method="post" action="Successful.jsp">
		<table>
			<tr>
				<td>VenueID:</td>
				<td><select  name="venueid">
  					<option value="001 Hall A">001 Hall A</option>
  					<option value="002 Hall B">002 Hall B</option>
  					<option value="003 Hall C">003 Hall C</option>
  					<option value="004 Hall D">004 Hall D</option>
  					<option value="005 Room A">005 Room A</option>
  					<option value="006 Room B">006 Room B</option>
  					<option value="007 Room C">007 Room C</option>
  					<option value="008 Room D">008 Room D</option>
  					<option value="009 Banquet Room A">009 Banquet Room A</option>
  					<option value="010 Banquet Room B">010 Banquet Room B</option>
  					<option value="011 Banquet Room C">011 Banquet Room C</option>
  					<option value="012 Banquet Room D">012 Banquet Room D</option>
  					<option value="013 Office A">013 Office A</option>
  					<option value="014 Office B">014 Office B</option>
  					<option value="015 Office C">015 Office C</option>
				</select></td>
			</tr>
			<tr>
			<td><input type="submit" value="Reserve"></td>
			</tr>
		</table>
		
	</form>	

<script>

var array = [["001","Hall A","100","Yes"],["002","Hall B","50", "Yes"],["003","Hall C","50", "Yes"],
	["004","Hall D","100", "Yes"],["005","Room A","50", "Yes"],["006","Room B","50", "Yes"],
	["007","Room C","50", "Yes"],["008","Room D","50", "Yes"],["009","Banquet Room A","100", "Yes"],
	["010","Banquet Room B","100", "Yes"],["011","Banquet Room C","100", "Yes"],["012","Banquet Room D","50", "Yes"],
	["013","Office A","30", "Yes"],["014","Office B","50", "Yes"],["015","Office C","50", "Yes"]],
table = document.getElementById("table");
	
for(var i = 0; i < array.length; i++)
{
    // create a new row
    var newRow = table.insertRow(table.rows.length);
    for(var j = 0; j < array[i].length; j++)
    {
        // create a new cell
        var cell = newRow.insertCell(j);
        
        // add value to the cell
        cell.innerHTML = array[i][j];
    }
}

</script>

</body>
</html>