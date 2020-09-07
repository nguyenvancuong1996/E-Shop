<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Category</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/deleteCategory" method="post">
		Id: <input type="text" name="categoryId" /> <input type="submit"
			value="Delete Category" />
	</form>

</body>
</html>