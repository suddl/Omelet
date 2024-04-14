<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Omlete(admin)</title>
    <!-- 공통 CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link type="text/css" href="<c:url value='/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
    <link type="text/css" href="<c:url value='/vendor/fontawesome/css/font-awesome.min.css'/>" rel="stylesheet">
    <link type="text/css" href="<c:url value='/vendor/icons/css/materialdesignicons.min.css'/>" media="all" rel="stylesheet" type="text/css">
    <link type="text/css" href="<c:url value='/vendor/slick-master/slick/slick.css'/>" rel="stylesheet" type="text/css">
    <link type="text/css" href="<c:url value='/vendor/lightgallery-master/dist/css/lightgallery.min.css'/>" rel="stylesheet">
    <link type="text/css" href="<c:url value='/vendor/select2/css/select2-bootstrap.css'/>" />
    <link type="text/css" href="<c:url value='/vendor/select2/css/select2.min.css'/>" rel="stylesheet">
    <link type="text/css" href="<c:url value='/css/style.css'/>" rel="stylesheet">
    <!-- Admin specific styles -->
    <link href="../css/admin.css" rel="stylesheet">
</head>
<body>
    <div id="header">
        <tiles:insertAttribute name="header_admin"/>
    </div>
    
    <div id="content">
        <tiles:insertAttribute name="content_admin"/>
    </div>
    
    <div id="footer">
        <tiles:insertAttribute name="footer_admin"/>
    </div>
    
    <!-- 공통 JavaScript -->
    <script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <script src="<c:url value='/vendor/slick-master/slick/slick.js'/>" type="text/javascript" charset="utf-8"></script>
    <script src="<c:url value='/vendor/lightgallery-master/dist/js/lightgallery-all.min.js'/>"></script>
    <script src="<c:url value='/vendor/select2/js/select2.min.js'/>"></script>
    <script src="<c:url value='/js/custom.js'/>"></script>
    <!-- Admin specific scripts -->
    <script src="../vendor_admin/jquery/jquery.min.js"></script>
    <script src="../vendor_admin/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../vendor_admin/jquery-easing/jquery.easing.min.js"></script>
    <script src="../js/admin2.min.js"></script>
</body>
</html>