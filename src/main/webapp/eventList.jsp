<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Event Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: rgb(9, 115, 80)">
			<div>
				<a href="enterParCode.jsp" class="navbar-brand"> <-- Back to event page </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

			
		</nav>
	</header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">List of Available Events</h3>
			<hr>
			
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						
						<th>Event type</th>
						<th>Event category</th>
						<th>Ticket Price </th>
						<th>Additional info</th>
						<th>RSVP</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ev" items="${EventDetails}">

						<tr>
							
							<td><c:out value="${ev.etype}" /></td>
							<td><c:out value="${ev.ecategory}" /></td>
							<td><c:out value="${ev.ebudget}" /></td>
							<td><c:out value="${ev.edescription}" /></td>
							<td>
							<c:url value="ParticipantDetails.jsp" var="details">
							
							<c:param name="code" value="${ev.eventcode}"/>
							<c:param name="price" value="${ev.ebudget}"/>
							
							</c:url>
							
							<a href="${details}">
							<input type="button" name="accept" value="Accept">
							</a>&nbsp;&nbsp;&nbsp;&nbsp;
							
							<a href="enterParCode.jsp">
							<input type="button" name="decline" value="Decline"></a>
							
						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
