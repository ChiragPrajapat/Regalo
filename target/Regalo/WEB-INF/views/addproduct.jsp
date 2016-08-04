<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>

<form:form method="POST" commandName="addproduct">
      <table>
       <tr>
           <td><form:label path="id">Product ID:</form:label></td>
           <td><form:input path="id" value="${product.product_id}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" value="${product.product_name}"/></td>
       </tr>
       <tr>
           <td><form:label path="supplier">Product Supplier</form:label></td>
           <td><form:input path="supplier" value="${Product.product_supplier}"/></td>
       </tr>
       <tr>
           <td><form:label path="price">Product Price</form:label></td>
           <td><form:input path="price" value="${product.product_price}"/></td>
       </tr>
       
       <tr>
           <td><form:label path="description">Product description:</form:label></td>
                    <td><form:input path="description" value="${product.product_description}"/></td>
       </tr>
       
       <tr>
           <td><form:label path="category">Product category:</form:label></td>
                    <td><form:input path="category" value="${product.product_category}"/></td>
       </tr>
       
          <tr>
         <td colspan="2"><input type="submit" value="Add"/></td>
        </tr>
   </table> 
  </form:form>
  
</body>
</html>