<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Custom fonts for this template-->
<link href="/vendor_admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/css/admin.css" rel="stylesheet">
<title>Omlete(admin)</title>
</head>
<body>
    <div id="header">
        <tiles:insertAttribute name="header_admin"/>
    </div>
    
    <div id="content">
        <tiles:insertAttribute name="content_admin"/>
    </div>
    
    <!-- Bootstrap core JavaScript-->
    <script src="/vendor_admin/jquery/jquery.min.js"></script>
    <script src="/vendor_admin/bootstrap/js_admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/vendor_admin/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/admin2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/vendor_admin/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/js/demo/chart-area-demo.js"></script>
    <script src="/js/demo/chart-pie-demo.js"></script>
</body>
</html>