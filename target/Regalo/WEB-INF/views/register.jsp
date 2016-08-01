<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

</head>
<body>
<%@ include file="header.jsp" %>


	<h1>Not yet Registered ?? Register Now</h1>

	<h4>Please fill the details</h4>
	<div class="container">
		
		<form:form action="../register" method="post" commandName=" ">

			<table>
				<tr>
					<td><div class="form group">
							<label for="name"> Name:<label> 
							<input type="text"
								class="form-control" name= "name" id="fname" placeholder="Name"
								required >
						</div></td>
				</tr>
				<tr>
					<td>
						<div class="form group">
							<label for="pasword"> Password:<label> 
							<input type="password"
								class="form-control" id="pwd">
						</div>
					</td>
				<tr>
					<td><div class="form group">
							<label for="tel"> Contact number</label> <input type="tel"
								class="form-control" id="tel" placeholder="contact number">
						</div></td>
				</tr>

				<tr>
					<td><div class="form group">
							<label for="email"> Email:</label> <input type="email"
								class="form-control" id="email" placeholder="Email">
						</div></td>
				</tr>
				<tr>
					<td>
						<div class="form group">
							<label for="text"> Address:</label> <input type="text" width="20"
								height="10" name="address" class="form-control" id="address"
								placeholder="Last Name">
						</div>
					</td>
				</tr>

			</table>
			<br>
			<br>

			<input type="submit" value="Register">
			<input type="reset" value="Reset">



		</form:form>
	</div>
</body>
</html>