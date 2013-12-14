<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Social Network Viewer</title>
	<link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div id="wrap">
		<tiles:insertAttribute name="header" />

		<div class="container">
			<tiles:insertAttribute name="content" />
		</div>
	</div>

	<div id="footer">
		<div class="container">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
  <script src="assets/bower_components/jquery/jquery.min.js"></script>
	<script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>    