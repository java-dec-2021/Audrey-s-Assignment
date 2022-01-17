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
	<title>New Product</title>
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
	<h1> New Product</h1>
			<form:form action="/products/new" method="POST" modelAttribute="product">
			<!-- Name -->
		    <div >
		        <form:label  path="name">Name:</form:label>
		        <div >
		        	<form:input  path="name"/>
		        	<form:errors  path="name"/>
		        </div>
		    </div>
		    <!-- Description -->
		    <div >
		        <form:label  path="description">Description:</form:label>
		        <div >
		        	<form:input  path="description"/>
		        	<form:errors  path="description"/>
		        </div>
		    </div>
		    <!-- Price -->
		    <div>
		        <form:label  path="price">Price:</form:label>
		        <div >
		        	<form:input  path="price"/>
		        	<form:errors  path="price"/>
		        </div>
		    </div>
		    <!-- button -->
		    <div >
		    	<div >
		    		<input class = "btn btn-success" type="submit" value="Create"/>
		    	</div>	
		    </div>
	    
		</form:form>
</body>