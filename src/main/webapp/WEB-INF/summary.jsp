<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> <c:out value="${songVar.title }"></c:out></h1>
	<p> Artist: <c:out value="${songVar.artist }"></c:out> </p>
	<p> Rating: <c:out value="${songVar.rating }"></c:out> </p>
	<form action="/delete/${songVar.id }" method="post">
		<button type="submit">delete</button> 
	</form>
	<a href="/dashboard">DashBoard</a>
</body>
</html>