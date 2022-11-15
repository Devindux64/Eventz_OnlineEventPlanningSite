<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Enter Your Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body >
<%
String code = request.getParameter("code");
String price = request.getParameter("price");
%>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: rgb(9, 115, 80)">
			<div>
				<a href="index.jsp" class="navbar-brand"><-- Back to Homepage</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
       </nav>
       
</header>
<br>
<br>
<br>

<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">Details of the Participant</h1><br><br>
			
			<form action="parIns" method="post">
		
				<fieldset class="form-group">
					<label>Event Code</label> <input type="text" class="form-control" name="code"  value="<%=code%>" required="required" readonly>
				</fieldset>
					
                 <fieldset class="form-group">
					<label>Name</label> <input type="text" class="form-control" name="name" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Age</label> <input type="text" class="form-control" name="age">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text" class="form-control" name="email">
				</fieldset>


				<fieldset class="form-group">
					<label>Phone Number</label> <input type="text" class="form-control" name="number">
				</fieldset>
				
				<fieldset class="form-group">
					<label>NIC Number</label> <input type="text" class="form-control" name="nic">
				</fieldset>
				
				<fieldset class="form-group">
				<input type="hidden" class="form-control" name="ticketprice" value = "LKR <%=price%>">
				</fieldset>
				
				
				<input type="submit" class="btn btn-success" name="submit" value="Create Participant">
				
				</form>
	</div>
	</div>
	</div><br><br><br><br><br>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
