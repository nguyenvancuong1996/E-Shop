<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Customer Store Application</title>
</head>
<body>
    ${message}

	<h2 align="center">Customer Management Application</h2>
	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h3>List of Customers</h3>
			</caption>
			<tr>
				<th>Email</th>
				<th>Password</th>
				<th>Encoded Password</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Phone Number</th>
				<th>Gender</th>
			</tr>
			<c:forEach items="${customers}" var="customer">
				<tr>
					<td>${customer.email}</td>
					<td>${customer.password}</td>
					<td>${customer.encodedPassword}</td>
					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.phoneNumber}</td>
					<td>${customer.gender}</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>