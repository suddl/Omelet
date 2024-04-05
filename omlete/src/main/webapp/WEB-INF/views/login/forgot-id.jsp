<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
      <div class="bg-white"> 
         <div class="container">
            <div class="row justify-content-center align-items-center d-flex vh-100">
               <div class="col-lg-4 mx-auto">
                  <div class="osahan-login py-4">
                     <div class="text-center mb-4">
                        <a href="index.html"><img src="images/logo3.png" alt=""></a>
                        <h5 class="font-weight-bold mt-3"> 아이디 찾기 </h5>
                        <p class="text-muted"> 이메일과 비밀번호를 입력해주세요. </p>
                        </div>
                     <form action="index.html">
                        <div class="form-group">
                        <label class="mb-1">이름</label>
                           <div class="position-relative icon-form-control">
                           <i class="fa-solid fa-circle-user position-absolute"></i>
                              <input type="이름" class="form-control">
                            </div>
                        </div>
                     <form action="index.html">
                        <div class="form-group">
                           <label class="mb-1">Email</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-email-outline position-absolute"></i>
                              <input type="email" class="form-control">
                           </div>
                        </div>
                        <button class="btn btn-success btn-block text-uppercase" type="submit"> 계정 찾기 </button>
                        <div class="py-3 d-flex align-item-center">
                           <a href="login.html">로그인</a>
                           <span class="ml-auto"> 새로운 계정 <a href="register.html"> 회원가입 </a></span>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>