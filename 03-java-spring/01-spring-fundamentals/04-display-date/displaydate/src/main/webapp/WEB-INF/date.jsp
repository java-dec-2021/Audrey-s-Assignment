<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<style>
	#dateh1 {
		font-weight: bold;
		color:blue;
	}
</style>
<head>
	<meta charset="UTF-8">
	<title>Time Dashboard</title>
	<!-- bootstrap link -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<div id="cont1">
		<h1 id = "dateh1"> <fmt:formatDate pattern="EEEE, 'the' dd 'of' MMMM, YYYY" value="${date }"/> </h1>
	</div>
</body>