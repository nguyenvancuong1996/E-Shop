<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<form:form action="${pageContext.request.contextPath}/addProduct" method="post"
		modelAttribute="productData">
		<form:label path="name">Name:</form:label>
		<form:input path="name" />
		<br>
		<form:label path="description">Description:</form:label>
		<form:input path="description" />
		<br>
		<form:label path="image">Image:</form:label>
		<form:input path="image" />
		<br>
		<form:label path="price">Price:</form:label>
		<form:input path="price" />
		<br>
		<form:label path="id">Category:</form:label>
		<form:select path="id" items="${categories}" />
		<br>
		<input type="submit" value="Add Product" />
	</form:form>


</body>
</html>