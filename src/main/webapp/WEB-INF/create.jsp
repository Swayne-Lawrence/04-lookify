<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/form" method="post" modelAttribute="song">
		<p>
			<form:label path="title">Title</form:label>
			<form:input path="title"/>
			<form:errors path="title"></form:errors>
		</p>
		<p>
			<form:label path="artist">Artist</form:label>
			<form:input path="artist"/>
			<form:errors path="artist"></form:errors>
		</p>
		<p>
			<form:label path="rating">Rating(1-10)</form:label>
			<form:input path="rating" type="number"/>
			<form:errors path="rating"></form:errors>
		</p>
		<button type="submit">Submit</button>
	</form:form>
</body>
</html>