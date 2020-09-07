<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
</head>
<body>
	<form:form action="${pageContext.request.contextPath}/addCategory"
		method="post" modelAttribute="categoryData">
		<table border="1">
			<tr>
				<td><form:label path="id">ID</form:label></td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
		</table>
		<tr>
			<td><input type="submit" value="Add Category" /></td>
		</tr>
	</form:form>
</body>
</html>