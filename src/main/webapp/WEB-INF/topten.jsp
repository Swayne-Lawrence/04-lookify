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
	<a href="/dashboard">DashBoard</a>
	<h2>Top Ten Songs:</h2>
	<table>
		<thead>
		<tr>
			<th>Name </th>
			<th>Rating </th>
			<th>Actions </th>
		</tr>
		</thead>
		<tbody>
			<c:forEach var="s" items="${songVar}">
				<tr>
					<td> <c:out value="${s.title }"></c:out></td>
					<td> <c:out value="${s.rating }"></c:out></td>
					<td>
						<form action="/delete/${s.id }" method="post">
							<button type="submit">delete</button> 
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>