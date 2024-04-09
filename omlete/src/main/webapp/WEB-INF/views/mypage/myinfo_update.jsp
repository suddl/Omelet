<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>
   <!-- 시작!!!! -->
<div class="main-page second py-5">
   <div class="container">
      <div class="row">
         <!-- ========================================================================================================================== -->
         <div class="col-lg-4 left">
            <div class="profile_info">
               <div class="seller-card">
                  <div class="user-profile-info">
                     <div>
                        <div class="user-profile-image">
                           <label class="user-pict">
                           <img src="<c:url value="/images/user/oneEgg.png"/>"  class="img-fluid user-pict-img">
                           <a href="#"
                              class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a></label>
                        </div>
                     </div>
                     <div class="user-profile-label">
                        <div class="username-line">
                           <a href="<c:url value="/mypage/profile"/>" class="seller-link">${member.memberName }</a>
                        </div>
                        <div class="oneliner-wrapper">
                        <!--  -->
                           <!-- <small class="oneliner">마이뱃지 대표 칭호</small> -->
                           <div class="ratings-wrapper">
                              <!-- <p class="rating-text"><strong>5.0</strong> (1k+ reviews)</p> -->
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="buttons-wrapper">
                     <a href="<c:url value="/mypage/profile/updateInfo"/>" class="btn-lrg-standard btn-contact-me js-contact-me js-open-popup-join">내 정보 수정</a>
                     <!-- <div class="btn-lrg-standard btn-white btn-custom-order">Get a Quote</div> -->
                   </div>
                </div>
             </div>
             <div class="seller-profile">

				<div class="linked-accounts">
                   <h4 class="mypagecatrgory">목록</h4>
                   <ul>
                   	<li>
                   		<br>
                   		<p>좋아요</p>
                   		<ul class="nav flex-column">
                      <li class="nav-item">
                         <a class="nav-link active" href="<c:url value="/mypage/profile/likeMovie"/>">- 영화</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="/mypage/profile/likeTv"/>">- TV</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="/mypage/profile/likeReview"/>">- 리뷰</a>
                     </li>
                	</ul>
                  	</li>
                  	<br>
                  	
                  	<li>
                  		<p>내 활동</p>
                  		<ul class="nav flex-column">
                     <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="/mypage/profile/writeReview"/>">- 작성한 리뷰</a>
                     </li>
                	</ul>
                	<ul class="nav flex-column">
                     <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="/mypage/profile/writeMoon"/>">- 작성한 문의글</a>
                     </li>
                	</ul>
                	<ul class="nav flex-column">
                     <li class="nav-item">
                        <a class="nav-link active" href="#">- 참여한 이벤트</a>
                     </li>
                	</ul>
                	<ul class="nav flex-column">
                     <li class="nav-item">
                        <a class="nav-link active" href="<c:url value="/mypage/profile/mybadge"/>">- 마이 뱃지</a>
                     </li>
                	</ul>
                  	</li>
                  	<br>
                  	<br>
                  
                  	<li>
                  		<a href="<c:url value="/mypage/profile/resign"/>">탈퇴하기</a>
                  	</li>
                   
                  </ul>
               </div>
          
            </div>
         </div>
         <!-- ========================================================================================================================== -->
         <div class="col-lg-8 right">
          <div class="shadow-sm rounded bg-white mb-3">
               <div class="box-title border-bottom p-3">
                  <h6 class="m-0">회원 정보 수정</h6>
                  <!-- <p class="mb-0 mt-0 small">회원 정보 수정 사항 페이지 입니다. </p> -->
               </div>
                  <form class="js-validate" name="updateForm" method="post" action="<c:url value="/mypage/updateInfo"/>" >
               <div class="box-body p-3">
                  <input type="hidden" name="memberNo" value="${loginMember.memberNo }">
                     <div class="row">
                        <!-- Input -->
                        <div class="col-sm-6 mb-2">
                           <div class="js-form-message">
                              <label id="nameLabel" class="form-label">
                              아이디
                              <span class="text-danger">*</span>
                              </label>
                              <div class="form-group">
                                 ${loginMember.memberId }
                              </div>
                               
                           </div>
                        </div>
                        <!-- End Input -->
                        <!-- Input -->
                        <div class="col-sm-6 mb-2">
                           <div class="js-form-message">
                              <label id="locationLabel" class="form-label">
                              비밀번호
                              <span class="text-danger">*</span>
                              </label>
                              <div class="form-group">
                                 <input type="password" id="passwd"class="form-control" name="memberPasswd" >
                              </div>
	                          <div class="mb-1">
								<span id="passwdNullMsg" class="alertmsg">6자이상 비밀번호를 입력해 주세요.</span>
								<span id="passwdValidMsg" class="alertmsg">비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</span>
							</div>
                           </div>
                        </div>
                        <!-- End Input -->
                        <!-- Input -->
                        <div class="col-sm-6 mb-2">
                           <div class="js-form-message">
                              <label id="usernameLabel" class="form-label">
                              회원 이름
                              <span class="text-danger">*</span>
                              </label>
                              <div class="form-group">
                                 <input type="text" class="form-control" id="name" name="memberName" value="${loginMember.memberName }" >
                              </div>
                              <div class="mb-1">
								<span id="nameNullMsg" class="alertmsg">이름을 입력해 주세요.</span>
								<span id="nameValidMsg" class="alertmsg">이름을 형식에 맞게 입력해 주세요.</span>
							  </div>
                           </div>
                        </div>
                        <!-- End Input -->
                         
                     </div>
                     <div class="row">
                        
                       <!-- Input -->
                        <div class="col-sm-6 mb-2">
                           <div class="js-form-message">
                              <label id="websiteLabel" class="form-label">
                              닉네임
                              <span class="text-danger">*</span>
                              </label>
                              <div class="form-group">
                                 <input class="form-control" type="text" name="memberNickname" id="nickname" value="${loginMember.memberNickname }" >
                              </div>
                              <div class="mb-1">
								<span id="nicknameNullMsg" class="alertmsg">닉네임을 입력해 주세요.</span>
								<span id="nicknameValidMsg" class="alertmsg">닉네임을 형식에 맞게 입력해 주세요.</span>
							 	<span id="nicknameDuplMsg" class="alertmsg">닉네임이 중복 되었습니다.</span>
							  </div>
                           </div>
                        </div>
                        <!-- End Input -->
                        
                     </div>
                     <div class="row">
                        
                       <!-- Input -->
                        <div class="col-sm-6 mb-2">
                           <div class="js-form-message">
                              <label id="websiteLabel" class="form-label">
                              핸드폰번호
                              <span class="text-danger">*</span>
                              </label>
                              <div class="form-group">
                                 <input class="form-control" type="text" id="phone" name="memberPhone" value="${loginMember.memberPhone }" >
                              </div>
                              <div class="mb-1">
								<span id="phoneNullMsg" class="alertmsg">핸드폰 번호를 입력해 주세요.</span>
								<span id="phoneValidMsg" class="alertmsg">핸드폰 번호는 01로 시작하며, 3~4 자리의 숫자로만 입력 가능합니다.</span>	
							  </div>
                           </div>
                        </div>
                        <!-- End Input -->
                        
                     </div>
                     <div class="row">
                        <!-- Input -->
                        <div class="col-sm-6 mb-2">
                           <div class="js-form-message">
                              <label id="emailLabel" class="form-label">
                              이메일 주소
                              <span class="text-danger">*</span>
                              </label>
                              <div class="form-group">
                                 <input type="text" class="form-control" id="email" name="memberEmail" value="${loginMember.memberEmail }" >
                              </div>
                              <div class="mb-1">
								<span id="emailNullMsg" class="alertmsg">이메일을 입력해 주세요.</span>
								<span id="emailValidMsg" class="alertmsg">이메일을 형식에 맞게 입력해 주세요.</span>
							</div>
                           </div>
                        </div>
                        <!-- End Input -->
                        
                     </div>
                     
               </div>
            
            </div>
            <div class="mb-3 text-right">
               <button type="submit" class="btn btn-outline-success">취소</button>
               <button type="submit" class="btn btn-success">수정</button>
            </div>   
                  </form>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">
	$(".alertmsg").hide();
	var nickNameResult=false;
	
	$(document).ready(function() {
	    // 닉네임 변경 시 중복 확인
	    $("#nickname").blur(function() {
	        var newNickname = $(this).val();
	        $.ajax({
	            method: "POST",
	            url: "<c:url value="/omlete/join/nicknameCheck"/>", // 닉네임 중복 확인을 위한 엔드포인트
	            data: { "memberNickname": newNickname },
	            dataType: "text",
	            success: function(response) {
	                if (response === "fail") {
	                    $("#nicknameDuplMsg").show();
	                } else {
	                    $("#nicknameDuplMsg").hide();
	                }
	            },
	            error: function() {
	                console.error("서버 오류: 중복 확인 요청 실패");
	            }
	        });
	    });
	});
    // 폼 제출 이벤트 핸들러
	$("#updateForm").submit(function(event) {
		var submitResult = true;
	    $(".alertmsg").hide(); // 모든 메시지 숨기기
	
	    
		 // 이름 검사
		 if ($("#name").val() == "") {
		     $("#nameNullMsg").show();
		     submitResult = false;
		 } else if (!/^[\u3131-\u3163\uac00-\ud7a3]{2,10}$/.test($("#name").val())) {
		     $("#nameValidMsg").show();
		     submitResult = false;
		 }
		
		// 닉네임 검사
		if ($("#nickname").val() == "") {
		    $("#nicknameNullMsg").show();
		    submitResult = false;
		} else if (!/^[\u3131-\u3163\uac00-\ud7a3a-zA-Z0-9]{2,10}$/.test($("#nickname").val())) {
		    $("#nicknameValidMsg").show();
		    submitResult = false;
		} else if (nickNameResult) {
		    $("#nicknameDuplMsg").show();
		    submitResult = false;
		}
		
		// 휴대폰 번호 검사
		if ($("#phone").val() == "") {
		    $("#phoneNullMsg").show();
		    submitResult = false;
		} else if (!/^01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}$/.test($("#phone").val())) {
		    $("#phoneValidMsg").show();
		    submitResult = false;
		}
		
		// 이메일 검사
		if ($("#email").val() == "") {
		    $("#emailNullMsg").show();
		    submitResult = false;
		} else if (!/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4})*$/.test($("#email").val())) {
		    $("#emailValidMsg").show();
		    submitResult = false;
		}
		
		// 비밀번호 검사
		if ($("#passwd").val() == "") {
		    $("#passwdNullMsg").show();
		    submitResult = false;
		} else if (!/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/.test($("#passwd").val())) {
		    $("#passwdValidMsg").show();
		    submitResult = false;
		}
		
		
		// 제출 결과 반환
        if (submitResult) {
            // 동의 및 가입 버튼을 누르면 가입이 정상적으로 되면서 login 폴더에 있는 myfavorite 라는 파일로 이동
            window.location.href = "<c:url value='/mypage/profile'/>";
        }
		
		
		// 제출 결과 반환
		return submitResult;
	});
</script>
</body>
</html>