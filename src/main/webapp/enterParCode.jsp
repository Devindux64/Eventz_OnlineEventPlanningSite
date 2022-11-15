<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Your Event!</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

<br> <br>
<div style="background-color: rgb(9, 115, 80)" class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">RSVP to Event</h1><br><br>

	<form action="find" method="post">
	
	<fieldset class="form-group">
		<label>Event Code</label> <input type="text" class="form-control" name="code" required="required" placeholder="Eg: 09876543">
	</fieldset>
	
	<button type="submit" class="btn btn-success" name="submit" value="ParCode">Submit</button>
	
	</form>
</div>
</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>