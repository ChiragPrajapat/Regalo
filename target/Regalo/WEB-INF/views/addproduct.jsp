<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Add Product</title>
</head>
<body>
		
<form:form role=form method="post" action="addproduct" modelAttribute="addproduct">
      <table>
       <%-- <tr>
           <td><form:label path="product_id">Product ID:</form:label></td>
           <td><form:input path="product_id" value="${product.product_id}" /></td>
       </tr> --%>
       <tr>
           <td><form:label path="product_name">Product Name:</form:label></td>
           <td><form:input path="product_name" class="form-control"/></td>
       </tr>
       <tr>
           <td><form:label path="product_supplier">Product Supplier</form:label></td>
           <td><form:input path="product_supplier" class="form-control"/></td>
       </tr>
       <tr>
           <td><form:label path="product_price">Product Price</form:label></td>
           <td><form:input path="product_price" class="form-control"/></td>
       </tr>
       
       <tr>
           <td><form:label path="product_description">Product description:</form:label></td>
                    <td><form:input path="product_description" class="form-control"/></td>
       </tr>
       
       <tr>
           <td><form:label path="product_category">Product category:</form:label></td>
                    <td><form:input path="product_category" class="form-control"/></td>
       </tr>
       
          <tr>
         <td colspan="2"><input type="submit" value="Add"/></td>
        </tr>
   </table> 
  </form:form>
  
  
  <%-- <h3>Product List</h3>
<c:if test="${!empty lists}">
	<table class="tg">
	<tr>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Description</th>
		<th width="120">Product supplier</th>
		<th width="120">Product Price</th>
		<th width="120">Product category</th>
		
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${lists}" var="person">
		<tr>
			<td>${product.product_id}</td>
			<td>${product.product_name}</td>
			<td>${product.product_supplier}</td>
			<td>${product.product_price} </td>
			<td><a href="<c:url value='/edit/${product.product_id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${product.product_id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	</c:if> --%>
</body>
</html>