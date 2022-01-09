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
	<p>Songs by <c:out value="${name }"></c:out> <a href="/dashboard">DashBoard</a> </p>
	<form action="/searched">
		<input type="text" name="artist"/>
		<button type="submit">Search</button>
	</form>
	
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th> Rating </th>
				<th> Action </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var ="s" items="${songVar }">
				<tr>
					<td><c:out value="${s.title }"></c:out></td>
					<td><c:out value="${s.rating }"></c:out> </td>
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