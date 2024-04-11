<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
   <body>
       <div class="bg-white">
        <div class="container"> 
            <div class="row justify-content-center align-items-center d-flex vh-100">
                <div class="col-lg-4 mx-auto">
                    <div class="osahan-login py-4">
                        <div class="text-center mb-4">
                            <a href="index.html">
                                 <img src="<c:url value="/images/logo/omlete_logo.png"/>" style="width: 200px; height: auto;"></a>
                            <h5 class="font-weight-bold mt-3"> 아이디 비번 찾기 </h5>
                            <p class="text-muted"> 아이디와 임시 비밀번호를 확인해주세요 </p>
                        </div>
                        <div>
                            <p id="memberId">아이디 = ${memberId}</p>
                            <p id="memberPasswd">임시 비밀번호 = ${memberPasswd}</p>
                            <!-- 이메일이나 다른 정보도 필요하다면 여기에 추가 -->
                            </form>
                        </div>
                    </div>
                    <button class="btn btn-success btn-block text-uppercase" type="button" onclick="window.location.href='<c:url value="/login/member"/>'">로그인</button>
                    <div class="py-3 d-flex align-item-center">
                        <span class="ml-auto"> 새로운 계정 <a href="<c:url value="/login/register"/>"> 회원가입 </a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>