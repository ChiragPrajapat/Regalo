<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
</head>

<body>
	<div class="panel-body">

		<table class="table table-striped table-hover ">
			<thead>
				<tr>
					<th>Cart id</th>
					<th>Product Name</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cartList}" var="cart">

					<tr>
						<td>${cart.cartId}</td>
						<td>${cart.productname}</td>
						<td>${cart.productId }
						<td>${cart.quantity}</td>
						<td>${cart.price}</td>
						<td>${cart.address}</td>
						<td><a
							href="${pageContext.request.contextPath}/cartdelete/${cart.cartId}">Delete</a>
						</td>
					</tr>
				</c:forEach>
				<tr>
					<td><form:form role="form"
							action="${pageContext.request.contextPath}/disp?id=4">
							<div class="form-group">
								<input type="submit" class="btn btn-default"
									value="Continue shopping">
							</div>
						</form:form></td>
					<td>
						<%-- <form:form role="form" action="${pageContext.request.contextPath}/collectbillinginfo/${cart.cartId}">
							<div class="form-group">
								
								<input type="submit" class="btn btn-default" value ="Checkout"/>

							</div>
						</form:form> --%>
						 <form:form
							action="${pageContext.request.contextPath}/collectbillinginfo/293">
									<input type="hidden" id="cart" name="cart" value=${cart} />
							<input type="submit" value="Check Out" />
						</form:form>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>