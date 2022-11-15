<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Employee Management</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel = "stylesheet" href="styles/Emp.css">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: rgb(9, 115, 80)">
			<div>
				<a href="index.jsp" class="navbar-brand"> <-- Back to Homepage </a>
			</div>

	
		</nav>
	</header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">Participant Details</h3>
			<hr>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Name</th>
						<th>Age</th>
						<th>Email Address</th>
						<th>Contact number</th>
						<th>NIC</th>
						<th>Event Code</th>
						<th>Payment Status</th>
						<th>Modify</th>
						<th>Remove Info</th>
						<th>Proceed to Payment</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="participant" items="${ParticipantDetails}">
						<c:set var="PID" value="${participant.id}"/>
						<c:set var="Name" value="${participant.name}"/>
						<c:set var="Age" value= "${participant.age}"/>
						<c:set var="Email" value="${participant.email}"/>
						<c:set var="Contact" value="${participant.phone}"/>
						<c:set var="NIC" value="${participant.nic}"/>
						<c:set var="paid" value="${participant.paid}"/>
						<c:set var="code" value="${code}"/>
						<c:set var="tPrice" value="${TicketPrice}"/>
						
						<tr>
							<td>${participant.name}</td>
							<td>${participant.age}</td>
							<td>${participant.email}</td>
							<td>${participant.phone}</td>
							<td>${participant.nic}</td>
							<td>${code}</td>
							<td>${TicketPrice}  ${participant.paid}</td>

							
							
							<td>
								
									<c:url value="updateParticipant.jsp" var="parUpdate">
									<c:param name="id" value="${participant.id}"/>
									<c:param name="name" value="${participant.name}"/>
									<c:param name="age" value="${participant.age}"/>
									<c:param name="email" value="${participant.email}"/>
									<c:param name="phone" value="${participant.phone}"/>
									<c:param name="nic" value="${participant.nic}"/>
									<c:param name="price" value="${TicketPrice}"/>
									<c:param name="code" value="${code}"/>
									
									</c:url>
									
									<a href="${parUpdate}">
									<input type="button" name="update" value="Update Data">
									</a>
									
									
								
							</td>
							
							
							<td>
								<c:url value="confirmParDel.jsp" var="parDelete">
									<c:param name="id" value="${participant.id}"/>
									<c:param name="name" value="${participant.name}"/>
									<c:param name="age" value="${participant.age}"/>
									<c:param name="email" value="${participant.email}"/>
									<c:param name="phone" value="${participant.phone}"/>
									<c:param name="nic" value="${participant.nic}"/>
									</c:url>
									
									<a href="${parDelete}">
									<input type="button" name="delete" value="Delete Data">
								</a>
							</td>
							
<!-- 							this is the problem, need to link this to servlet -->
							<td>
								<c:url value="confirmPaymentPar.jsp" var="parPayment">
									<c:param name="id" value="${participant.id}"/>
									<c:param name="name" value="${participant.name}"/>
									<c:param name="age" value="${participant.age}"/>
									<c:param name="email" value="${participant.email}"/>
									<c:param name="phone" value="${participant.phone}"/>
									<c:param name="nic" value="${participant.nic}"/>
									<c:param name="price" value="${TicketPrice}"/>
									<c:param name="code" value="${code}"/>
								</c:url>
									
									<a href="${parPayment}">
									<input type="button" name="payment" value="Make Payment">
									</a>
							</td>
							
							  
						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</div>

	
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>