
<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Regalo</title>
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
	<%-- 
	<div class="container">
		<h2>Available products</h2>

		<!-- 		<div ng-app="allProd" ng-controller="allProdCntrl"> -->

		<c:set var="prd" scope="session" value="${prd}" />
		<table class="table">
			<thead>
				<tr>
					<th>Product id</th>
					<th>Product name</th>
					<th>Supplier</th>
					<th>price</th>
					<th>Description</th>
					<th>Category</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lists}" var="product">
					<!-- 						 <tr ng-repeat="product in Data|filter:{product_category:'birthday'}|filter:search"> -->

					<tr>
						<td>${product.product_id}</td>
						<td>${product.product_name}</td>
						<td>${product.product_supplier}</td>
						<td>${product.product_price}</td>
						<td>${product  .product_description}</td>
							<td>${product.product_category}</td>


						<td><a href="getProduct">View</a>|<a href="updateProduct">Edit</a>|<a href="deleteProduct">Delete</a></td>

					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
 --%>


	<div class="container" ng-app="myApp" ng-controller="myCtrl">
		<c:set var="product_id" value="${param.id}"></c:set>

 
  <table class="table table-striped">
		
		<thead>
			<tr>
				<td>Gift Id</td>
				<td>Gift Name</td>
				<td>Gift Supplier</td>
				<td>Gift Cost</td>
				<td>Gift Description</td>
				<!-- 
							<td>4{product.product_category}</td> -->
			</tr>
			</thead>
			<tbody>
			<c:if test="${product_id=='1'}">
				<tbody>
				<tr
					ng-repeat="product in Data|filter:{product_category:'birthday'}|filter:search">
					<td>{{product.product_id}}</td>
					<td>{{product.product_name}}</td>
					<td>{{product.product_supplier}}</td>
					<td>{{product.product_price}}</td>
					<td>{{product.product_description}}</td>
					<!-- <td>{{product.product_category}}</td> -->
					<td><a href="details?id={{product.product_id}}">View</a>|<sec:authorize access="hasRole('ROLE_ADMIN')"> 
					<a href="edit?id={{product.product_id}}">Edit</a>| <a
						href="delete?id={{product.product_id}}">Delete</a></sec:authorize></td>
				</tr>
</tbody>
			</c:if>

			<c:if test="${product_id=='2'}">
				<tbody>
				<tr
					ng-repeat="product in Data|filter:{product_category:'wedding'}|filter:search">
					<td>{{product.product_id}}</td>
					<td>{{product.product_name}}</td>
					<td>{{product.product_supplier}}</td>
					<td>{{product.product_price}}</td>
					<td>{{product.product_description}}</td>
					<!-- <td>{{product.product_category}}</td> -->
					<td><a href="details?id={{product.product_id}}">View</a>| <sec:authorize access="hasRole('ROLE_ADMIN')"><a
						href="edit?id={{product.product_id}}">Edit</a>| <a
						href="delete?id={{product.product_id}}">Delete</a></sec:authorize></td>

				</tr>
</tbody>
			</c:if>



			<c:if test="${product_id=='3'}">
				<tbody>
				<tr
					ng-repeat="product in Data|filter:{product_category:'christmas'}|filter:search">
					<td>{{product.product_id}}</td>
					<td>{{product.product_name}}</td>
					<td>{{product.product_supplier}}</td>
					<td>{{product.product_price}}</td>
					<td>{{product.product_description}}</td>
					<!-- <td>{{product.product_category}}</td> -->
					<td><a href="details?id={{product.product_id}}">View</a>|<sec:authorize access="hasRole('ROLE_ADMIN')"> <a
						href="edit?id={{product.product_id}}">Edit</a>| <a
						href="delete?id={{product.product_id}}">Delete</a></sec:authorize></td>
				</tr>
</tbody>
			</c:if>

			<c:if test="${product_id=='4' }">
			<tbody>
				<tr ng-repeat="product in Data|filter:search">
					<td>{{product.product_id}}</td>
					<td>{{product.product_name}}</td>
					<td>{{product.product_supplier}}</td>
					<td>{{product.product_price}}</td>
					<td>{{product.product_description}}</td>
					<td>{{product.product_category}}</td>
					<td><a href="details?id={{product.product_id}}">View</a>| <sec:authorize access="hasRole('ROLE_ADMIN')"><a
						href="edit?id={{product.product_id}}">Edit</a>| <a
						href="delete?id={{product.product_id}}">Delete</a></sec:authorize></td>
				</tr>
				</tbody>
			</c:if>


			
		</table>
	</div>



	<%-- <c:if test="${not empty lists}">

		<ul>
			<c:forEach var="listValue" items="${lists}">
				<table>
					<tr>
						<td>${listValue.toString()}</td>
						<br>

					</tr>
				</table>
			</c:forEach>
		</ul>

	</c:if> --%>


</body>
</html>

