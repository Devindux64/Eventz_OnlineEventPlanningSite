<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleting Account!</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String userName = request.getParameter("user");
	String password = request.getParameter("pass");
%>

<h1>Delete Customer Account</h1>

<form action="delete" method="post">

<table>
	<tr>
        <td>Customer ID</td>
        <td><input type ="text" name="CID" value ="<%=id%>" readonly></td>
    </tr>
	<tr>
        <td>Name</td>
        <td><input type ="text" name="name" value ="<%=name%>"readonly></td>
    </tr>
    <tr>
	<td>Email</td> 
	<td><input type ="text" name="email" value ="<%=email%>"readonly> </td>
    </tr>
	<tr>
        <td>Phone Number</td>
        <td><input type ="text" name="phone" value ="<%=phone%>"readonly></td>
    </tr>
	<tr>
        <td>User Name</td>
        <td><input type ="text" name="user" value ="<%=userName%>"readonly></td>
    </tr>	
</table>
<br>
	<input type="submit" name="submit"  value="Delete Account">


</form>

</body>
</html>