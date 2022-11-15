<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
</head>
<body>
<br> <br>
<div style="background-color: rgb(9, 115, 80)" class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">Login</h1><br><br>

	<form action="parEx" method="post">
	
	<fieldset class="form-group">
		<label>NIC</label> <input type="text" class="form-control" name="nic" required="required" placeholder="Enter your NIC">
	</fieldset>

	<fieldset class="form-group">
		<a href="ParticipantDetails.jsp">Create an Account!</a>
	</fieldset>
	
	<button type="submit" class="btn btn-success" name="submit" value="login">Participant Login</button>
	
	</form>
</div>
</div>
</div>

<%-- <jsp:include page="Footer.jsp"></jsp:include> --%>


</body>
</html>