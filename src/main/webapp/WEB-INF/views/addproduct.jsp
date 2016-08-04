<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
		
<form:form method=post commandName="addproduct">
      <table>
       <tr>
           <td><form:label path="product_id">Product ID:</form:label></td>
           <td><form:input path="product_id" value="${product.product_id}" /></td>
       </tr>
       <tr>
           <td><form:label path="product_name">Product Name:</form:label></td>
           <td><form:input path="product_name" value="${product.product_name}"/></td>
       </tr>
       <tr>
           <td><form:label path="product_supplier">Product Supplier</form:label></td>
           <td><form:input path="product_supplier" value="${Product.product_supplier}"/></td>
       </tr>
       <tr>
           <td><form:label path="product_price">Product Price</form:label></td>
           <td><form:input path="product_price" value="${product.product_price}"/></td>
       </tr>
       
       <tr>
           <td><form:label path="product_description">Product description:</form:label></td>
                    <td><form:input path="product_description" value="${product.product_description}"/></td>
       </tr>
       
       <tr>
           <td><form:label path="product_category">Product category:</form:label></td>
                    <td><form:input path="product_category" value="${product.product_category}"/></td>
       </tr>
       
          <tr>
         <td colspan="2"><input type="submit" value="Add"/></td>
        </tr>
   </table> 
  </form:form>
  <h3>Product List</h3>
<c:if test="${!empty listProduct}">
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
	<c:forEach items="${listProducts}" var="person">
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
	</c:if>
</body>
</html>