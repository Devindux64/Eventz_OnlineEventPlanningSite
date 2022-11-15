<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Account</title>

<style type="text/css">
table,tr,td{
 border: solid 1px;
}

</style>
</head>
<body>

	<table>
	<c:forEach var = "cus" items = "${cusDetail}">
	
	<c:set var="id" value="${cus.ID}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="user" value="${cus.userName}"/>
	<c:set var="pass" value="${cus.password}"/>
	
	
	<tr>
	<td>Customer ID</td>
	<td>${cus.ID}</td>
	</tr>
	
	<tr>
	<td>Name</td>
	<td>${cus.name}</td>
	</tr>
	
	<tr>
	<td>Email Address</td>
	<td>${cus.email}</td>
	</tr>
	
	<tr>
	<td>Phone Number</td>
	<td>${cus.phone}</td>
	</tr>
	
	<tr>
	<td>User Name</td>
	<td>${cus.userName}</td>
	</tr>
	
	<tr>
	<td>Password</td>
	<td>${cus.password}</td>
	</tr>
	
	
	</c:forEach>
	
	<c:url value="updateCustomer.jsp" var="cusUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="user" value="${user}"/>
		<c:param name="pass" value="${pass}"/>
	</c:url>
	
	<a href="${cusUpdate}">
	<input type="button" name="update" value="Update Data">
	</a>
	<br>
	
	
	<c:url value="deleteCus.jsp" var="cusDel">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="user" value="${user}"/>
		<c:param name="pass" value="${pass}"/>
	</c:url>
	<a href="${cusDel}">
	<input type = "button" name="delete" value="Delete Account">
	</a>
</table>
</body>
</html>