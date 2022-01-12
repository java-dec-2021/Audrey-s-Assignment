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
	<title>Show</title>
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
	<h1>New Ninja</h1>
		<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
			<!-- Dojo -->
			<div>
		        <form:label path="dojo">Dojo:</form:label>
		        <div>
		        	<form:select path="dojo">
			        	<c:forEach items="${ dojos }" var="dojo">
			        		<form:option value="${ dojo.id }">${ dojo.name }</form:option>
			        	</c:forEach>
		        	</form:select>
		        	<form:errors path="dojo"/>
		        </div>
		    </div>
			<!-- First Name -->
		    <div >
		        <form:label  path="firstName">First Name:</form:label>
		        <div >
		        	<form:input  path="firstName"/>
		        	<form:errors  path="firstName"/>
		        </div>
		    </div>
		    <!-- Last Name -->
		    <div >
		        <form:label  path="lastName">Last Name:</form:label>
		        <div >
		        	<form:input  path="lastName"/>
		        	<form:errors  path="lastName"/>
		        </div>
		    </div>
		    <!-- Age -->
		    <div>
		        <form:label  path="age">Age:</form:label>
		        <div >
		        	<form:input  path="age"/>
		        	<form:errors  path="age"/>
		        </div>
		    </div>
		    <!-- button -->
		    <div >
		    	<div >
		    		<input class = "btn btn-success" type="submit" value="Submit"/>
		    	</div>	
		    </div>
	    
		</form:form>
</body>