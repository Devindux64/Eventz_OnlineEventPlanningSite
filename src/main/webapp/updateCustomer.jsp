<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<jsp:include page="header.jsp"></jsp:include>
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
<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">Update Participant</h1><br><br>
<form action="update" method="post">



<table>
	<tr>
        <td>Customer ID</td>
        <td><input type ="text" class="form-control" name="CID" value ="<%=id%>" readonly></td>
    </tr>
	<tr>
        <td>Name</td>
        <td><input type ="text" class="form-control" name="name" value ="<%=name%>"></td>
    </tr>
    <tr>
	<td>Email</td> 
	<td><input type ="text" class="form-control" name="email" value ="<%=email%>"> </td>
    </tr>
	<tr>
        <td>Phone Number</td>
        <td><input type ="text" class="form-control" name="phone" value ="<%=phone%>"></td>
    </tr>
	<tr>
        <td>User Name</td>
        <td><input type ="text" class="form-control" name="user" value ="<%=userName%>"></td>
    </tr>
	<tr>
        <td>Password</td>
        <td><input type ="password" class="form-control" name="pass" value ="<%=password%>"></td>
    </tr>	
</table>
    
<input type="submit" name="submit" value="Update Data"> <br>

	
</form>
</div>
</div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>