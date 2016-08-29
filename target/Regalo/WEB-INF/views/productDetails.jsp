<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${product.product_name}</title>
<%@ include file="header.jsp"%>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
</head>
<body>
	<div class="list-group" class="container" ng-app="myApp"
		ng-controller="myCtrl">

<%-- 		<div ng-repeat="product in Data | filter: { product_id: '${param.id}'}"> --%>
		<center>
<img src="<c:url value='/resources/images/{{product.category}}/{{product.image}}'/>" height="300px" width="300px" />
</center>
			<table class="table table-striped">
				<tr>
					<th>Name</th>
					<td>${product.product_name}</td>
				</tr>
				<tr>
					<th>Available Supplier</th>
					<td>${product.product_supplier}</td>
				</tr>
				<tr>
					<th>Price</th>
					<td>${product.product_price}</td>
				</tr>
				<tr>
					<th>Details</th>
					<td>${product.product_description}</td>
				</tr>
				<tr>
					<th>Category</th>
					<td>${product.product_category}</td>
				</tr>
				<tr>
			</table>
			
 
<sec:authorize access="hasRole('ROLE_USER')">

<form:form method="POST"
			action="${pageContext.request.contextPath}/addtocart/${product.product_id}"
			modelAttribute="cart" commndName="cart">
<input type="hidden" name="_eventId" value="collectCustomerInfo">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />

<input type="hidden" value="${param.id}" />
<!-- 			<span class="h5"> <label>Quantity : </label> -->
<%-- 			<form:input path="quantity"  --%>
<%-- 			class="form-control" --%>
<%-- 					type="number" style="width:15%"/> --%>
<!-- 			</span> -->
<!-- 			<br /> -->

<input type="submit"value="add to cart">
		</form:form>
	
		<a class="list-group-item" href="disp?id=4">
			<button class="btn btn-primary btn-lg btn-block">Continue Shopping</button>
		</a>
		</sec:authorize>
	</div>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>