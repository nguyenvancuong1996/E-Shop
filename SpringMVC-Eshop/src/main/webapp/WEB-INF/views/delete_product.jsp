<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/deleteProduct"
		method="post">
		Id: <input type="text" name="productId" /> <input type="submit"
			value="Delete Product" />
	</form>

</body>
</html>