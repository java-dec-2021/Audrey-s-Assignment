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
	<title>Product Page</title>
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
	<h1> <c:out value="${product.name}"/> </h1>
	<div id= "outside-cont1">
		<!-- left -->
		<div>
			<h1>Categories:</h1>
			<c:forEach items="${ categories }" var="c">
            	<p>- <c:out value="${c.name}"/></p>
        	</c:forEach>
		</div>
		<!-- right -->
		<div>
			<form:form action="/products/${ product.id }" method="POST" modelAttribute="category">
			<!-- Category -->
			<div>
		        <form:label path="category">Add Category:</form:label>
		        <div>
		        	<form:select path="category">
			        	<c:forEach items="${ nonCategories }" var="noncat">
			        		<form:option value="${ noncat.id }"><c:out value="${ noncat.name }"/></form:option>
			        	</c:forEach>
		        	</form:select>
		        	<form:errors path="category"/>
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