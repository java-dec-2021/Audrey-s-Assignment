<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!--  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>Category Page</title>
	<!-- bootstrap link -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<!-- My CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!--  -->
</head>
<body>
		<h1> ${category.name} </h1>
	<div id= "outside-cont2">
		<!-- left -->
		<div>
			<h1>Products:</h1>
			<c:forEach items="${products}" var="ninja">
            	<p>- <c:out value="${product.name}"/></p>
        	</c:forEach>
		</div>
		<!-- right -->
		<div>
			<form:form action="/categories/${ category.id }" method="POST" modelAttribute="product">
			<!-- product -->
			<div>
		        <form:label path="product">Add Product:</form:label>
		        <div>
		        	<form:select path="product">
			        	<c:forEach items="${ nonProducts }" var="product">
			        		<form:option value="${ product.id }">${ product.name }</form:option>
			        	</c:forEach>
		        	</form:select>
		        	<form:errors path="product"/>
		        </div>
		    </div>
		    <!-- button -->
		    <div >
		    	<div >
		    		<button class="btn btn-success">Add</button>
		    	</div>	
		    </div>
	    
		</form:form>
		</div>
		<!-- end -->
	</div>
</body>