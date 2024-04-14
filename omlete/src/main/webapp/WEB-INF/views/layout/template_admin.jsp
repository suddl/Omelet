<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Gurdeep singh osahan">
<meta name="author" content="Gurdeep singh osahan">
<!-- Favicon Icon -->
<link rel="icon" type="image/png" href="<c:url value="/vendor/images/fav.svg"/>">
<!-- Bootstrap core CSS -->
<link type="text/css"  href="<c:url value="/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
<!-- Font Awesome-->
<link type="text/css" href="<c:url value="/vendor/fontawesome/css/font-awesome.min.css"/>" rel="stylesheet">
<!-- Material Design Icons -->
<link type="text/css"  href="<c:url value="/vendor/icons/css/materialdesignicons.min.css"/>" media="all" rel="stylesheet" type="text/css">
<!-- Slick -->
<link type="text/css" href="<c:url value="/vendor/slick-master/slick/slick.css"/>" rel="stylesheet" type="text/css">
<!-- Lightgallery -->
<link type="text/css" href="<c:url value="/vendor/lightgallery-master/dist/css/lightgallery.min.css"/>" rel="stylesheet">
<!-- Select2 CSS -->
<link type="text/css" href="<c:url value="/vendor/select2/css/select2-bootstrap.css"/>" />
<link type="text/css" href="<c:url value="/vendor/select2/css/select2.min.css"/>" rel="stylesheet">
<!-- Custom styles for this template -->
<link type="text/css" href="<c:url value="/css/style.css"/>" rel="stylesheet">

<!-- 뱃지 부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Custom fonts for this template-->
<link href="../vendor_admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../css/admin.css" rel="stylesheet">
<title>Omlete(admin)</title>
</head>
<body>
    <div id="header">
        <tiles:insertAttribute name="header_admin"/>
    </div>
    
    <div id="content">
        <tiles:insertAttribute name="content_admin"/>
    </div>
 	<script src="<c:url value="/vendor/jquery/jquery.min.js"/>"></script>
	
    <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <!-- Slick -->
    <script src="<c:url value="/vendor/slick-master/slick/slick.js"/>" type="text/javascript" charset="utf-8"></script>
    <!-- lightgallery -->
    <script src="<c:url value="/vendor/lightgallery-master/dist/js/lightgallery-all.min.js"/>"></script>
    <!-- select2 Js -->
    <script src="<c:url value="/vendor/select2/js/select2.min.js"/>"></script>
    <!-- Custom -->
    <script src="<c:url value="/js/custom.js"/>"></script>
    
    <!-- Bootstrap core JavaScript-->
    <script src="../vendor_admin/jquery/jquery.min.js"></script>
    <script src="../vendor_admin/bootstrap/js_admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor_admin/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/admin2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../vendor_admin/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../js/demo/chart-area-demo.js"></script>
    <script src="../js/demo/chart-pie-demo.js"></script>
</body>
</html>