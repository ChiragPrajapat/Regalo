<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers</title>
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
		<c:set var="supplier_id" value="${param.id}"></c:set> --%>

 
  
<div class="panel panel-info">
  <div class="panel-heading">
    <h2 class="panel-title">Suppliers |  <a href="addsupplier">Add Supplier</a>
 
 </h2>
  </div>
  <div class="panel-body">
  
 <table class="table">
			<thead>
				<tr>
					<th>Supplier id</th>
					<th>Supplier name</th>
					<th> Address</th>
					<th>Email</th>
					<th>Contact</th>
					

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lists}" var="supplier">
					<!-- <tr ng-repeat="supplier in Data|filter:{supplier_category:'birthday'}|filter:search"> -->

					<tr>
						<td>${supplier.supplier_id}</td>
						<td>${supplier.supplier_name}</td>
						<td>${supplier.supplier_address}</td>
						<td>${supplier.supplier_email}</td>
						<td>${supplier.supplier_contact}</td>
						<td><a href="${pageContext.request.contextPath}/supedit/${supplier.supplier_id} ">Edit</a>|<a href="${pageContext.request.contextPath}/supdelete/${supplier.supplier_id}">Delete</a></td>

					</tr>

				</c:forEach>
			</tbody>
		</table>
 </div>
 </div>
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
					ng-repeat="supplier in Data|filter:search">
					<td>{{supplier.supplier_id}}</td>
					<td>{{supplier.supplier_name}}</td>
					<td>{{supplier.supplier_contact}}</td>
					<td>{{supplier.supplier_email}}</td>
					<td>{{supplier.supplier_address}}</td>
					<td> <a
						href="supedit?id={{supplier.supplier_id}}">Edit</a>| <a
						href="supdelete?id={{supplier.supplier_id}}">Delete</a></td>

				</tr>
</tbody>
</table> -->
</body>
</html>