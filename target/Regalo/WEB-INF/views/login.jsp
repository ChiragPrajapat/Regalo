<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>
	<div class="container">
		<h3>Please login with your credentials</h3>
		<form name:"f" action="<:url value='j_spring_security_check'/>"
			method="post">
			<table>
				<tr>
					<td>
						<div class="form group">
							<form:label path="user_username">
								<spring:message text="Username" />
							</form:label>
							<td><input type='text' name='j_username'/></td>
						<br>
					</td>
				</tr>
				<tr>
					<td>
						<div class="form group">
							<form:label path="user_password">
								<spring:message text="Password" />
							</form:label>
							<td><input type='password' name='j_password'/></td>
						<br>
					</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-success">Login</button>
			<button type="link" class="btn btn-link">
				<a href="register">Sign up</a>
			</button>
			<a href="index">Home</a>
			</form>
	</div>

</body>
</html>