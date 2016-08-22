<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Supplier</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
<style>
.error {
	color: red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>

	<form:form method="post" commandName="addsupplier"
		enctype="/form-data" action="addsupplier">
		<table class="table table-striped">
			<tr>
				<td><form:label path="supplier_name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="supplier_name" /></td>
				<td><form:errors path="supplier_name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="supplier_address">
						<spring:message text="Address " />
					</form:label></td>
				<td><form:input path="supplier_address" /></td>
			</tr>
			<tr>
				<td><form:label path="supplier_email">
						<spring:message text="Email" />
					</form:label></td>
				<td><form:input path="supplier_email" /></td>
				<td><form:errors path="supplier_email" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="supplier_contact">
						<spring:message text="Contact" />
					</form:label></td>
				<td><form:input path="supplier_contact" /></td>
				<td><form:errors path="supplier_contact" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
<br>
	<br>
	
<%@ include file="footer.jsp" %>	

</body>
</html>