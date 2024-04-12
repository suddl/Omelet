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
				    <p class="resign-ment" style="font-size: 25px; font-weight: bold; margin-bottom: 30px;">축하합니다!<br>회원가입이 완료되었습니다!</p>
				  </div>
				  <p class="resign-ment" style="font-size: 13px; font-weight: bold; color: #929290;">마이페이지에서 인생작품을 등록해주세요.</p>
				  <div><a href="<c:url value="/login/member"/>">로그인</a></div>
				</div>
</body>
</html>