<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty username }">
Welcome {username} to Nguyen Van Cuong Store</c:when>
		<c:otherwise>
Please register or login
		<br>
			<a href="/register">Register</a>
			<a href="/login">Login</a>
		</c:otherwise>
	</c:choose>
</body>
</html>