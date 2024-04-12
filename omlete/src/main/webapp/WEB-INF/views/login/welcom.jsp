<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omlete - 회원가입 성공</title>
</head>
<body>
			<div class="container-resign">
		  <div class="center-resign">
		    <img src="<c:url value="/images/logo/logo.png"/>" class="logo-resign">
		    <p class="resign-ment" style="font-size: 25px; font-weight: bold;">축하합니다!<br>회원가입이 완료되었습니다!</p>
		  </div>
		  <div><a href="<c:url value="/login/member"/>">로그인</a></div>
	  </div>
</body>
</html>