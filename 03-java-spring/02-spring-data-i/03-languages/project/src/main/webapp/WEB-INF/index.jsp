<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<h1><a>All Languages</a></h1>
	<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Creator</th>
            <th>Version</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${languages}" var="language">
        <tr>
            <td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
            <td><c:out value="${language.creator}"/></td>
            <td><c:out value="${language.version}"/></td>
            <td><a href="/languages/edit/${language.id}">Edit</a> | <a href="/languages/delete/${language.id}">Delete</a></td>
        </tr>
        </c:forEach>
    </tbody>
</table> 
<p>New Language</p>
<form:form action="/languages" method="POST" modelAttribute="language">
		    <div >
		        <form:label  path="name">Name</form:label>
		        <div >
		        	<form:input  path="name"/>
		        	<form:errors  path="name"/>
		        </div>
		    </div>
		    <div >
		        <form:label path="creator">Creator</form:label>
		        <div >
		        	<form:input  path="creator"/>
		        	<form:errors  path="creator"/>
		        </div>
		    </div>
		    <div >
		        <form:label  path="version">Version</form:label>
		        <div >
		        	<form:input  path="version"/>
		        	<form:errors  path="version"/>
		        </div>
		    </div>
		    <div >
		    	<div >
		    		<input class = "btn btn-success" type="submit" value="Submit"/>
		    	</div>	
		    </div>
	    
		</form:form>
</body>
