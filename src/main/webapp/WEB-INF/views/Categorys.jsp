<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>


</head>
<body>
<%-- <div class="container" ng-app="myApp" ng-controller="myCtrl">
		<c:set var="category_id" value="${param.id}"></c:set> --%>

 <h1>Categories</h1>
 <h3><a href="addcategory">Add Category</a></h3>
 <table class="table">
			<thead>
				<tr>
					<th>Category id</th>
					<th>Category name</th>
					<th> Description</th>
					
					

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lists}" var="category">
					<!-- <tr ng-repeat="category in Data|filter:{category_category:'birthday'}|filter:search"> -->

					<tr>
						<td>${category.category_id}</td>
						<td>${category.category_name}</td>
						<td>${category.category_description}</td>
						<td><a href="catdelete/${category.category_id}">Delete</a></td>

					</tr>

				</c:forEach>
			</tbody>
		</table>
 
  <!-- <table class="table table-striped">
		
		<thead>
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Contact</td>
				<td>Email</td>
				<td>Address</td>
			</tr>
			</thead>
			<tbody>
				<tr
					ng-repeat="category in Data|filter:search">
					<td>{{category.category_id}}</td>
					<td>{{category.category_name}}</td>
					<td>{{category.category_contact}}</td>
					<td>{{category.category_email}}</td>
					<td>{{category.category_address}}</td>
					<td> <a
						href="supedit?id={{category.category_id}}">Edit</a>| <a
						href="supdelete?id={{category.category_id}}">Delete</a></td>

				</tr>
</tbody>
</table> -->
</div>
</body>
</html>