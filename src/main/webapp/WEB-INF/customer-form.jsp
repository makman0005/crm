<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Customer</title>
<!-- Add bootstrap stylesheet -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Add custom stylesheet -->
<!-- custom stylesheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/stylee.css" />
</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center mb-3">Save Customer</h1>
		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST" class="form-group">

			<!-- associate data with customer id -->
			<form:hidden path="id" />

			<div class="row">
				<div class="col-md-6">
					<label for="firstName">First Name:</label>
					<form:input path="firstName" id="firstName" class="form-control" />
				</div>
				<div class="col-md-6">
					<label for="lastName">Last Name:</label>
					<form:input path="lastName" id="lastName" class="form-control" />
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-md-12">
					<label for="email">E-Mail:</label>
					<form:input path="email" id="email" class="form-control" />
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-md-12 text-center">
					<input type="submit" value="Save" />
				</div>
			</div>
		</form:form>
		<p class="text-center mt-3">
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>
	</div>
</body>
</html>
