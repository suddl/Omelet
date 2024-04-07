<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
      <!-- Register --> 
      <div class="bg-white">
         <div class="container">
            <div class="row justify-content-center align-items-center d-flex vh-100">
               <div class="col-lg-4 mx-auto">
                  <div class="osahan-login py-4">
                     <div class="text-center mb-4">
                        <h5 class="font-weight-bold mt-3">회원가입</h5>
                        <!-- <p class="text-muted">Make the most of your professional life</p> -->
                     </div>
                     <form id="joinForm"  action="${pageContext.request.contextPath }/join/member" class="form" method="post">
                        <div class="form-row">
                           <div class="col">
                            <div class="form-group">
                        <label class="mb-1" for="id">아이디</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-account position-absolute"></i>
                              <input class="form-control" type="text" id="id" name="memberId">
                           </div>
       	                   <div class="mb-1">
							<span id="idNullMsg" class="msg idMsg">아이디를 입력해 주세요.</span>
						 	<span id="idValidMsg" class="msg idMsg">아이디는 영문자로 시작되는 영문자,숫자,_의 6~20범위의 문자로만 작성 가능합니다.</span>
						 	<span id="idDuplMsg" style="">${message } </span>
						 </div>
                        </div>
                        
                        <div class="form-group">
                           <label class="mb-1" for="name">이름</label>
                           <div class="position-relative icon-form-control">  
                           <i class="fa-solid fa-circle-user position-absolute"></i>
                              <input class="form-control" type="text" id="name" name="memberName" required>
                           </div>
                           <div class="mb-1">
							<span id="nameNullMsg" class="msg">이름을 입력해 주세요.</span>
							<span id="nameValidMsg" class="msg">이름을 형식에 맞게 입력해 주세요.</span>
						  </div>
                        </div>
                        
                        <div class="form-group">
                           <label class="mb-1" for="nickname">닉네임</label>
                           <div class="position-relative icon-form-control">
                           <i class="fa-regular fa-circle-user position-absolute"></i>
                              <input type="text" class="form-control" id="nickname" name="memberNickname" required>
                           </div>
                           <div class="mb-1">
							<span id="nicknameNullMsg" class="msg">닉이름을 입력해 주세요.</span>
							<span id="nicknameValidMsg" class="msg">닉이름을 형식에 맞게 입력해 주세요.</span>
						  </div>
                        </div>
                        
                        <div class="form-group">
                           <label class="mb-1" for="phone">핸드폰번호</label>
                           <div class="position-relative icon-form-control">
                           <i class="fa-solid fa-phone-volume position-absolute"></i>
                              <input type="text" class="form-control" id="phone" name="memberPhone" required>
                           </div>
                           <div class="mb-1">
								<span id="phoneNullMsg" class="msg">휴대폰 번호를 입력해 주세요.</span>
								<span id="phoneValidMsg" class="msg">휴대폰 번호는 01로 시작하며, 3~4 자리의 숫자로만 입력 가능합니다.</span>	
							</div>
                        </div>
                        
                        <div class="form-group">
                           <label class="mb-1" for="email">Email</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-email-outline position-absolute"></i>
                              <input type="email" class="form-control" id="email" name="memberEmail">
                           </div>
                           <div class="mb-1">
								<span id="emailNullMsg" class="msg">이메일을 입력해 주세요.</span>
								<span id="emailValidMsg" class="msg">이메일을 형식에 맞게 입력해 주세요.</span>
							</div>	
                        </div>
                        
                        <div class="form-group">
                           <label class="mb-1" for="password">비밀번호</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-key-variant position-absolute"></i>
                              <input class="form-control" type="password" id="passwd" name="memberPassword" required>
                           </div>
                           <div class="mb-1">
								<span id="passwdNullMsg" class="msg">6자이상 비밀번호를 입력해 주세요.</span>
								<span id="passwdValidMsg" class="msg">비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</span>
							</div>
                           
                        </div>
                         <div class="form-group">
                           <label class="mb-1" for="confirm-password">비밀번호 확인</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-key-variant position-absolute"></i>
                              <input class="form-control" type="password" id="rePasswd" name="rePasswd" required>
                            </div>
                        </div>
	                        <div class="mb-1">
								<span id="repasswdNullMsg" class="msg">6자이상 비밀번호확인을 입력해 주세요.</span>
								<span id="repasswdMatchMsg" class="msg">비밀번호와 비밀번호확인이 서로 맞지 않습니다.</span>
							</div>
                        
                        
                        <div class="form-group">
                           <label class="mb-1"> 귀하는 OMELET <a href="#">개인 정보 보호 정책 </a>및 <a href="#">쿠키정책</a> 에 <a  href="#"> 동의합니다 </a>.</label>
                        </div>
                           <label class="mb-1"> 이미 가입하셨나요? <a href="login.html">로그인</a></label>
                        </div>
                        </div>
                        <button class="btn btn-success btn-block text-uppercase" type="submit" id="joinBtn"> 동의 및 가입 </button>
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
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
       <script type="text/javascript">
	$("#id").focus();
	var submitResult;
	
	$("#joinBtn").submit(function() {
		
		submitResult=true;
		$(".msg").css("display","none");

		var idReg=/^[a-zA-Z]\w{5,19}$/g;
		if($("#id").val()=="") {//입력값이 없는 경우
			$("#idNullMsg").css("display","block");
			submitResult=false;
		} else if(!idReg.test($("#id").val())) {//입력값이 형식에 맞지 않는 경우
			$("#idValidMsg").css("display","block");
			submitResult=false;
		}
		
		var nameReg=/^[가-힣]{2,10}$/g;
		if($("#name").val()=="") {//입력값이 없는 경우
			$("#nameNullMsg").css("display","block");
			submitResult=false;
		}else if(!nameReg.test($("#name").val())) {//입력값이 형식에 맞지 않는 경우
			$("#nameValidMsg").css("display","block");
			submitResult=false;
		}
		
		var nameReg=/^[가-힣]{2,10}$/g;
		if($("#nickname").val()=="") {//입력값이 없는 경우
			$("#nameNullMsg").css("display","block");
			submitResult=false;
		}else if(!nameReg.test($("#nickname").val())) {//입력값이 형식에 맞지 않는 경우
			$("#nameValidMsg").css("display","block");
			submitResult=false;
		} 
		
		var phoneReg=/01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
		if($("#phone").val()=="") {//입력값이 없는 경우
			$("#phoneNullMsg").css("display","block");
			submitResult=false;
		} else if(!phoneReg.test($("#phone").val())) {//입력값이 형식에 맞지 않는 경우
			$("#phoneValidMsg").css("display","block");
			submitResult=false;
		}
		
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
		if($("#email").val()=="") {//입력값이 없는 경우
			$("#emailNullMsg").css("display","block");
			submitResult=false;
		} else if(!emailReg.test($("#email").val())) {//입력값이 형식에 맞지 않는 경우
			$("#emailValidMsg").css("display","block");
			submitResult=false;
		}
		
		var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
		if($("#passwd").val()=="") {//입력값이 없는 경우
			$("#passwdNullMsg").css("display","block");
			submitResult=false;
		} else if(!passwdReg.test($("#passwd").val())) {//입력값이 형식에 맞지 않는 경우
			$("#passwdValidMsg").css("display","block");
			submitResult=false;
		} 
		
		if($("#rePasswd").val()=="") {//입력값이 없는 경우
			$("#repasswdNullMsg").css("display","block");
			submitResult=false;
		} else if($("#passwd").val()!=$("#rePasswd").val()) {//repasswd입력값과 passwd입력값이 다른 경우
			$("#repasswdMatchMsg").css("display","block");
			submitResult=false;
		}
		
		
		

		
		return submitResult;
		
	});
	
	
	
	
	
	
</script>
      
      </body>
</html>