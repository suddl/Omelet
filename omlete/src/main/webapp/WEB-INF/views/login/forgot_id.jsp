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
                           <img src="<c:url value="/images/logo/omlete_logo.png"/>" style="width: 200px; height: auto;"></a>
                        <h5 class="font-weight-bold mt-3"> 아이디/비밀번호찾기 </h5> 
                        <p class="text-muted"> 이름과 이메일를 입력해주세요. </p>
                        </div>
                      <form action="<c:url value="/login/find"/>" method="post">
                        <div class="form-group">
                        <label class="mb-1">name</label>
                           <div class="position-relative icon-form-control">
                           <i class="fa-solid fa-circle-user position-absolute"></i>
                                <input type="text" class="form-control" name="memberName">
                            </div>
                        </div>
                        <div class="form-group">
                           <label class="mb-1">Email</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-email-outline position-absolute"></i>
                              <input type="email" class="form-control" name="memberEmail">
                           </div>
                        </div>
                        <button class="btn btn-success btn-block text-uppercase" type="submit"> 계정 찾기 </button>
                        <div class="py-3 d-flex align-item-center">
                           <a href="<c:url value="/login/member"/>">로그인</a>
                           <span class="ml-auto"> 새로운 계정 <a href="<c:url value="/login/register"/>"> 회원가입 </a></span>
                        </div>
			      	</form>
                   </div>
              </div>
          </div>
          </div>
</body>
</html>