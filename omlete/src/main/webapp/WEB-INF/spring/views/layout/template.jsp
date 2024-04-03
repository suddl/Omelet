<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Gurdeep singh osahan">
<meta name="author" content="Gurdeep singh osahan">
<!-- Favicon Icon -->
<link rel="icon" type="image/png" href="images/fav.svg">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome-->
<link href="vendor/fontawesome/css/font-awesome.min.css" rel="stylesheet">
<!-- Material Design Icons -->
<link href="vendor/icons/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">
<!-- Slick -->
<link href="vendor/slick-master/slick/slick.css" rel="stylesheet" type="text/css">
<!-- Lightgallery -->
<link href="vendor/lightgallery-master/dist/css/lightgallery.min.css" rel="stylesheet">
<!-- Select2 CSS -->
<link href="vendor/select2/css/select2-bootstrap.css" />
<link href="vendor/select2/css/select2.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<title>Omlete</title>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Contact form JavaScript -->
      <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <script src="js/jqBootstrapValidation.js"></script>
      <script src="js/contact_me.js"></script>
      <!-- Slick -->
      <script src="vendor/slick-master/slick/slick.js" type="text/javascript" charset="utf-8"></script>
      <!-- lightgallery -->
      <script src="vendor/lightgallery-master/dist/js/lightgallery-all.min.js"></script>
      <!-- select2 Js -->
      <script src="vendor/select2/js/select2.min.js"></script>
      <!-- Custom -->
      <script src="js/custom.js"></script>
</body>
</html>