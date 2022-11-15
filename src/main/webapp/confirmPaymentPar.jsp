<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Confirm Delete!</title>
</head>
<body>
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

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String age = request.getParameter("age");
	String number = request.getParameter("phone");
	String nic = request.getParameter("nic");
	String price = request.getParameter("price");
	String code = request.getParameter("code");
%>

<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<h1 class="navbar-brand">Make The Payment!</h1><br><br>
			
			<form action="paymentUpParServlet" method="post">
			

				<fieldset class="form-group">
					<label>Participant ID</label> <input type="text" class="form-control" name="id" value ="<%=id%>" readonly>
				</fieldset>

                 <fieldset class="form-group">
					<label>Name</label> <input type="text" class="form-control" name="name" value="<%=name%>" readonly>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Age</label> <input type="text" class="form-control" value="<%=age%>"  name="age" readonly>
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text" class="form-control" value="<%=email%>"  name="email" readonly>
				</fieldset>


				<fieldset class="form-group">
					<label>Phone Number</label> <input type="text" class="form-control" value="<%=number%>"  name="number" readonly>
				</fieldset>
				
				<fieldset class="form-group">
					<label>NIC Number</label> <input type="text" class="form-control" value="<%=nic%>"  name="nic" readonly>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Payment Amount</label> <input type="text" class="form-control" value="<%=price%>"  name="ticketprice" readonly>
				</fieldset>
				
				<input type = "hidden" name = "code" value = "<%=code%>">
				
				
				
				<input type="submit" class="btn btn-success" name="submit" value="Pay Now" readonly>
				
				</form>
	</div>
	</div>
	</div><br><br><br><br><br>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>