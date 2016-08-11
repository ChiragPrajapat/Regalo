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
<title>User Registration</title>
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
<%@ include file="header.jsp" %>


	<h1>Not yet Registered ?? Register Now</h1>

	<h4>Please fill the details</h4>
	<div class="container">
		<form:form method="post" commandName="addsupplier"
		enctype="multipart/form-data" action="addsupplier">
		<table>
			<%-- <tr>
           <td><form:label path="supplier_id">Supplier ID:</form:label></td>
           <td><form:input path="supplier_id" value="${supplier.supplier_id}" /></td>
       </tr> --%>
			<tr>
				<td><form:label path="user_firstname">
						<spring:message text="First Name" />
					</form:label></td>
				<td><form:input path="user_firstname" /></td>
				<td><form:errors path="user_firstname" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="user_lastname">
						<spring:message text="Last Name" />
					</form:label></td>
				<td><form:input path="user_lastname" /></td>
				<td><form:errors path="user_lastname" cssClass="error" /></td>
			</tr>

			<tr>
				<td><form:label path="user_username">
						<spring:message text="User Name " />
					</form:label></td>
				<td><form:input path="user_username" /></td>
				<td><form:errors path="user_username" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="user_password">
						<spring:message text="Password " />
					</form:label></td>
				<td><form:input path="user_password" /></td>
				<td><form:errors path="user_password" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="user_address">
						<spring:message text="Address" />
					</form:label></td>
				<td><td><form:input path="user_address" /></td>
				<td><form:errors path="user_address" cssClass="error" /></td>
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
	</div>
</body>
</html>