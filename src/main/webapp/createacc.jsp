<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Account</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

<br> <br>
<div style="background-color: rgb(9, 115, 80)" class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">Login</h1><br><br>

	<form action="insert" method="post">
	
	<fieldset class="form-group">
		<label>Name</label> <input type="text" class="form-control" name="name" required="required" placeholder="Eg: John Doe">
	</fieldset>
	
	<fieldset class="form-group">
		<label>Email</label> <input type="text" class="form-control" name="email" required="required" placeholder="Eg: JDoe@email.com">
	</fieldset>
	
	<fieldset class="form-group">
		<label>Phone Number</label> <input type="text" class="form-control" name="number" required="required" placeholder="Eg: +94777123456">
	</fieldset>
	
	<fieldset class="form-group">
		<label>Username</label> <input type="text" class="form-control" name="user" required="required" placeholder="Eg: JDoe99">
	</fieldset>
	
	<fieldset class="form-group">
		<label>Password</label> <input type="password" class="form-control" name="pass" required="required" placeholder="Eg: ********">
	</fieldset>
	
	<button type="submit" class="btn btn-success" name="submit" value="login">Save</button>
	
	</form>
</div>
</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>


</body>
</html>