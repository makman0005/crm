<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers List</title>
<!-- bootstrap stylesheet -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- custom stylesheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/stylee.css" />
</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center text-blue">Customers</h1>
		<div class="d-flex justify-content-end mb-3">
			<button type="button" onclick="window.location.href='add'">Add
				Customer</button>
		</div>
		<table class="table table-bordered">
			<thead class="thead-light">
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>

				<!--  loop over and print customers -->
				<c:forEach var="customer" items="${customers}">


					<!-- update link with customer id -->
					<c:url var="updateLink" value="/customer/update">
						<c:param name="customerId" value="${customer.id}"></c:param>
					</c:url>
					
						<!-- delete link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${customer.id}"></c:param>
					</c:url>
					<tr>
						<td>${customer.id}</td>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.email}</td>
					<!-- 	Display the update link -->
						<td><a href="${updateLink}">Update</a>  |
					
						<a href="${deleteLink}" 
						onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false ">Delete</a>
						
						 </td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
