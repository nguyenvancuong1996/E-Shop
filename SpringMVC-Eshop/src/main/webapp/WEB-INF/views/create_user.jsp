<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Add user</title>
</head>
<body>
	<form:form action="${pageContext.request.contextPath}/createCustomer"
		method="post" modelAttribute="registerForm">
		<table border="1">
			<tr>
				<td><form:label path="email">Email:</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td><form:label path="checkedPassword">Checked Password:</form:label></td>
				<td><form:input path="checkedPassword" /></td>
			</tr>

			<tr>
				<td><form:label path="firstName">First Name:</form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name:</form:label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="gender">Gender:</form:label></td>
				<td><form:input path="gender" /></td>
			</tr>
			<tr>
				<td><form:label path="phoneNumber">Phone Number:</form:label></td>
				<td><form:input path="phoneNumber" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add user"></td>
				<td></td>
			</tr>
	</form:form>
</body>
</html>
