<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
		
<form:form method="post" commandName="addproduct" action="addproduct">
      <table>
       <%-- <tr>
           <td><form:label path="product_id">Product ID:</form:label></td>
           <td><form:input path="product_id" value="${product.product_id}" /></td>
       </tr> --%>
       <tr>
           <td><form:label path="product_name">  
           <spring:message text="Product name" /></form:label></td>
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
            <spring:message text="product description " /></form:label></td>
                    <td><form:input path="product_description" /></td>
       </tr>
       
       <tr>
           <td><form:label path="product_category">  <spring:message text="Product category" />
           </form:label></td>
                    <td><form:input path="product_category"/></td>
       </tr>
       
          <tr>
         <td colspan="2"><input type="submit" value="Add"/></td>
        </tr>
   </table> 
  </form:form>
</body>
</html>