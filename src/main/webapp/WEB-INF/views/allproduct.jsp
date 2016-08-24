
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
	<br>
	<br>

	<div id="carousel-example-2" class="carousel slide alternative"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-2" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-2" data-slide-to="1"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<div class="row">
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/Beautiful-unique-dimond-Bracelet.jpg" />"
							style="max-width: 100%;">
					</div>
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/birthday_glass_frame.jpg" />"
							style="max-width: 100%;">
					</div>
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/bracelet.jpg" />"
							style="max-width: 100%;">
					</div>
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/dad_watch.jpg" />"
							style="max-width: 100%;">
					</div>
				</div>
			</div>
			<div class="item">
				<div class="row">
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/flower_teddy_chocolate.jpg" />"
							style="max-width: 100%;">
					</div>
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/mirror.jpg" />"
							style="max-width: 100%;">
					</div>
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/photo_frame.jpg" />"
							style="max-width: 100%;">
					</div>
					<div class="col-md-3">
						<img
							src="<c:url value="/resources/images/procorousel/wrist_watch.jpg" />"
							style="max-width: 100%;">
					</div>
				</div>
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-2"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#carousel-example-2"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
	<br>
	<div class="clearfix"></div>
	<br>
	<div class="panel panel-primary" ng-app="myApp" ng-controller="myCtrl">
		<!-- <div class="container">
			<div class="col-sm-6" style="">
				<div class="panel-heading">
					<h3 class="panel-title">Products</h3>
					<div class="col-sm-6">
						
					</div>
				</div>
			</div>
		</div> -->
<div class="row">
        <div class="col-md-6">
    		<h2>Search</h2>
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input ng-model="search.product_name" type="text" class="form-control input-lg" placeholder="Search" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>	
	</div>
		<c:set var="product_id" value="${param.id}"></c:set>
		<div class="panel-body">


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
								<td><a href="details?id={{product.product_id}}">View</a>| <sec:authorize
										access="hasRole('ROLE_ADMIN')">
										<a href="edit?id={{product.product_id}}">Edit</a>
									</sec:authorize>| <sec:authorize access="hasRole('ROLE_ADMIN')">
										<a href="delete?id={{product.product_id}}">Delete</a>
									</sec:authorize>
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
								<td><a href="details?id={{product.product_id}}">View</a>| <sec:authorize
										access="hasRole('ROLE_ADMIN')">
										<a href="edit?id={{product.product_id}}">Edit</a>
									</sec:authorize>| <sec:authorize access="hasRole('ROLE_ADMIN')">
										<a href="delete?id={{product.product_id}}">Delete</a>
									</sec:authorize></td>

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
								<td><a href="details?id={{product.product_id}}">View</a>| <sec:authorize
										access="hasRole('ROLE_ADMIN')">
										<a href="edit?id={{product.product_id}}">Edit</a>
									</sec:authorize>| <sec:authorize access="hasRole('ROLE_ADMIN')">
										<a href="delete?id={{product.product_id}}">Delete</a>
									</sec:authorize>
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
								<td><a href="details?id={{product.product_id}}">View</a>
								
								 <sec:authorize
										access="hasRole('ROLE_ADMIN')">|
	<a href="edit?id={{product.product_id}}">Edit</a>| 	<a
											href="delete?id={{product.product_id}}">Delete</a>
									</sec:authorize>
						</tbody>
					</c:if>
			</table>
		</div>
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

	<br>
	<br>

	<%@ include file="footer.jsp"%>

</body>
</html>

