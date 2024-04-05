<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
      <!-- Login --> 
      <div class="bg-white">
         <div class="container">
            <div class="row justify-content-center align-items-center d-flex vh-100">
               <div class="col-lg-4 mx-auto">
                  <div class="osahan-login py-4">
                     <div class="text-center mb-4">
                        <a href="index.html"><img src="images/logo3.png"></a>
                    <h5 class="font-weight-bold mt-3">로그인</h5>
                      <!--  <p class="text-muted">로그인</p> -->
                     </div>
                     <form action="index.html">
                        <div class="form-group">
                           <label class="mb-1">아이디</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-account position-absolute"></i>
                              <input type="email" class="form-control">
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="mb-1">비밀번호</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-key-variant position-absolute"></i>
                              <input type="password" class="form-control">
                           </div>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                           <input type="checkbox" class="custom-control-input" id="customCheck1">
                           <label class="custom-control-label" for="customCheck1">암호 기억하기</label>
                        </div>
                        <button class="btn btn-success btn-block text-uppercase" type="submit"> 로그인 </button>
                        <div class="text-center mt-3 border-bottom pb-3">
                            <hr class="css-1x1brjf e1io9utx0">     
                           <div class="row">
                              <div class="col-6">
                                 <button type="button" class="btn btn-outline-instagram btn-block fa-regular fa-comments "></i> kakao talk </button>
                              </div>
                              <div class="col-6">
                                 <button type="button" class="btn btn-outline-facebook btn-block fa-regular fa-square-check"></i> naver </button>
                              </div>
                           </div>
                        </div>
                        <div class="py-3 d-flex align-item-center">
                           <a href="forgot-id.html"> 아이디찾기 </a>/<a href="forgot-password.html"> 비밀번호 찾기 </a>
                           <span class="ml-auto"> 새로운 계정 <a href="register.html"> 회원가입 </a></span>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
</html>