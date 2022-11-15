<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<br> <br>
<div style="background-color: rgb(9, 115, 80)" class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">Login</h1><br><br>

	<form action="log" method="post">
	
	<fieldset class="form-group">
		<label>User Name</label> <input type="text" class="form-control" name="user" required="required" placeholder="Enter Your Username">
	</fieldset>
	
	<fieldset class="form-group">
		<label>Password</label> <input type="text" class="form-control" name="pass" required="required" placeholder="Enter your Password">
	</fieldset>
	
	<fieldset class="form-group">
		<a href="forgotPassword.jsp">Forget Password?</a>
	</fieldset>
	
	<fieldset class="form-group">
		<a href="createacc.jsp">Create an Account!</a>
	</fieldset>
	
	<button type="submit" class="btn btn-success" name="submit" value="login">Save</button>
	
	</form>
</div>
</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>


</body>
</html>