<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
   </head>
   <body>
      <!-- 시작!!!! -->
      <div class="main-page second py-5">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 left">
                  <div class="profile_info">
                     <div class="seller-card">
                     	<!-- 
                        <div>
                           <div class="user-online-indicator is-online " data-user-id="1152855">
                              <i class="fa fa-circle"></i>online
                           </div>
                        </div>
                        <div><a href="#" class="ambassadors-badge">Ambassador</a></div> 
                         -->
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
                                 <a href="<c:url value="/mypage/profile"/>" class="seller-link">회원 이름</a>
                              </div>
                              <div class="oneliner-wrapper">
                              <!--  -->
                                 <small class="oneliner">마이뱃지 대표 칭호</small>
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
			                           <a class="nav-link active" href="#">- 작성한 문의글</a>
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
               <div class="col-lg-8 right">
					<div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div ><img src="<c:url value="/images/badge/welcomeBadge.png"/>" class="mybadgeImg"></div>
                                <h2 class="fs-4 fw-bold">뱃지 이름</h2>
                                <p class="mb-0">뱃지내용뱃지내용뱃지내용뱃지내용뱃지내용뱃지내용뱃지내용뱃지내용뱃지내용</p>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div><img src="<c:url value="/images/badge/welcomeBadge.png"/>" class="mybadgeImg"></div>
                                <h2 class="fs-4 fw-bold">뱃지 이름</h2>
                                <p class="mb-0">뱃지내용</p>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div><img src="<c:url value="/images/badge/welcomeBadge.png"/>" class="mybadgeImg"></div>
                                <h2 class="fs-4 fw-bold">뱃지 이름</h2>
                                <p class="mb-0">뱃지내용</p>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div> 

               </div>
            </div>
         </div>
      </div>
      
   </body>
</html>