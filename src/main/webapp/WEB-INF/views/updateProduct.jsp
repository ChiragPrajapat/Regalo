<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regalo :: Update Product</title>
</head>
<body>
	<form:form modelAttribute="product" role="form" action="updateProduct" >
		<form:input style="visibility:hidden;" path="product_id"/>
		<table>
			<tr>
				<td><form:label path="product_name">
						<spring:message text="Product name" />
					</form:label></td>
				<td><form:input path="product_name" /></td>
			</tr>
			<tr>
				<td><form:label path="product_supplier">
						<spring:message text="product supplier" />
					</form:label></td>
				<td><form:input path="product_supplier" /></td>
			</tr>
			<tr>
				<td><form:label path="product_price">
						<spring:message text="Product price" />
					</form:label></td>
				<td><form:input path="product_price" /></td>
			</tr>

			<tr>
				<td><form:label path="product_description">
						<spring:message text="product description " />
					</form:label></td>
				<td><form:input path="product_description" /></td>
			</tr>

			<tr>
				<td><form:label path="product_category">
						<spring:message text="Product category" />
					</form:label>
				</td>

				<td><form:input path="product_category" /></td>
			</tr>

			<tr>
				<td colspan="2">
				<input type="submit" value="Update" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>