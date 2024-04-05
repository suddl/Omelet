<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
      <!--    header -->
      <nav class="navbar navbar-expand-lg navbar-light topbar static-top shadow-sm bg-white osahan-nav-top px-0">
         <div class="container">
            <!-- Sidebar Toggle (Topbar) -->
            <a class="navbar-brand" href="index.html"><img src="images/logo.svg" alt=""></a>
            <!-- Topbar Search -->
            <form class="d-none d-sm-inline-block form-inline mr-auto my-2 my-md-0 mw-100 navbar-search">
               <div class="input-group">
                  <input type="text" class="form-control bg-white small" placeholder="Find Services..." aria-label="Search" aria-describedby="basic-addon2">
                  <div class="input-group-append">
                     <button class="btn btn-success" type="button">
                     <i class="fa fa-search fa-sm"></i>
                     </button>
                  </div>
               </div>
            </form>
            <!-- Topbar Navbar -->
            <ul class="navbar-nav align-items-center ml-auto">
               <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications d-sm-none">
                  <a class="btn btn-icon btn-transparent-dark dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fa fa-search fa-fw"></i>
                  </a>
                  <!-- Dropdown - Messages -->
                  <div class="dropdown-menu dropdown-menu-right p-3 shadow-sm animated--grow-in" aria-labelledby="searchDropdown">
                     <form class="form-inline mr-auto w-100 navbar-search">
                        <div class="input-group">
                           <input type="text" class="form-control bg-light border-0 small" placeholder="Find Services..." aria-label="Search" aria-describedby="basic-addon2">
                           <div class="input-group-append">
                              <button class="btn btn-primary" type="button">
                              <i class="fa fa-search fa-sm"></i>
                              </button>
                           </div>
                        </div>
                     </form>
                  </div>
               </li>
               <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
                  <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="javascript:void(0);" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell">
                        <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                        <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                     </svg>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts">
                     <h6 class="dropdown-header dropdown-notifications-header">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell mr-2">
                           <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                           <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                        </svg>
                        Alerts Center
                     </h6>
                     <a class="dropdown-item dropdown-notifications-item" href="#!">
                        <div class="dropdown-notifications-item-icon bg-warning">
                           <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity">
                              <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline>
                           </svg>
                        </div>
                        <div class="dropdown-notifications-item-content">
                           <div class="dropdown-notifications-item-content-details">December 29, 2020</div>
                           <div class="dropdown-notifications-item-content-text">This is an alert message. It's nothing serious, but it requires your attention.</div>
                        </div>
                     </a>
                     <a class="dropdown-item dropdown-notifications-item" href="#!">
                        <div class="dropdown-notifications-item-icon bg-info">
                           <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart">
                              <line x1="12" y1="20" x2="12" y2="10"></line>
                              <line x1="18" y1="20" x2="18" y2="4"></line>
                              <line x1="6" y1="20" x2="6" y2="16"></line>
                           </svg>
                        </div>
                        <div class="dropdown-notifications-item-content">
                           <div class="dropdown-notifications-item-content-details">December 22, 2020</div>
                           <div class="dropdown-notifications-item-content-text">A new monthly report is ready. Click here to view!</div>
                        </div>
                     </a>
                     <a class="dropdown-item dropdown-notifications-item" href="#!">
                        <div class="dropdown-notifications-item-icon bg-danger">
                           <svg class="svg-inline--fa fa-exclamation-triangle fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="exclamation-triangle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg="">
                              <path fill="currentColor" d="M569.517 440.013C587.975 472.007 564.806 512 527.94 512H48.054c-36.937 0-59.999-40.055-41.577-71.987L246.423 23.985c18.467-32.009 64.72-31.951 83.154 0l239.94 416.028zM288 354c-25.405 0-46 20.595-46 46s20.595 46 46 46 46-20.595 46-46-20.595-46-46-46zm-43.673-165.346l7.418 136c.347 6.364 5.609 11.346 11.982 11.346h48.546c6.373 0 11.635-4.982 11.982-11.346l7.418-136c.375-6.874-5.098-12.654-11.982-12.654h-63.383c-6.884 0-12.356 5.78-11.981 12.654z"></path>
                           </svg>
                           <!-- <i class="fas fa-exclamation-triangle"></i> -->
                        </div>
                        <div class="dropdown-notifications-item-content">
                           <div class="dropdown-notifications-item-content-details">December 8, 2020</div>
                           <div class="dropdown-notifications-item-content-text">Critical system failure, systems shutting down.</div>
                        </div>
                     </a>
                     <a class="dropdown-item dropdown-notifications-item" href="#!">
                        <div class="dropdown-notifications-item-icon bg-success">
                           <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-plus">
                              <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                              <circle cx="8.5" cy="7" r="4"></circle>
                              <line x1="20" y1="8" x2="20" y2="14"></line>
                              <line x1="23" y1="11" x2="17" y2="11"></line>
                           </svg>
                        </div>
                        <div class="dropdown-notifications-item-content">
                           <div class="dropdown-notifications-item-content-details">December 2, 2020</div>
                           <div class="dropdown-notifications-item-content-text">New user request. Woody has requested access to the organization.</div>
                        </div>
                     </a>
                     <a class="dropdown-item dropdown-notifications-footer" href="alerts.html">View All Alerts</a>
                  </div>
               </li>
               <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
                  <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" href="javascript:void(0);" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail">
                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                        <polyline points="22,6 12,13 2,6"></polyline>
                     </svg>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownMessages">
                     <h6 class="dropdown-header dropdown-notifications-header">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail mr-2">
                           <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                           <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        Message Center
                     </h6>
                     <a class="dropdown-item dropdown-notifications-item" href="#!">
                        <img class="dropdown-notifications-item-img" src="images/user/s7.png">
                        <div class="dropdown-notifications-item-content">
                           <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                           <div class="dropdown-notifications-item-content-details">Emily Fowler · 58m</div>
                        </div>
                     </a>
                     <a class="dropdown-item dropdown-notifications-item" href="#!">
                        <img class="dropdown-notifications-item-img" src="images/user/s8.png">
                        <div class="dropdown-notifications-item-content">
                           <div class="dropdown-notifications-item-content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                           <div class="dropdown-notifications-item-content-details">Diane Chambers · 2d</div>
                        </div>
                     </a>
                     <a class="dropdown-item dropdown-notifications-footer" href="messages.html">Read All Messages</a>
                  </div>
               </li>
               <li class="nav-item dropdown no-arrow no-caret dropdown-user">
                  <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="img-fluid" src="images/user/s4.png"></a>
                  <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
                     <h6 class="dropdown-header d-flex align-items-center">
                        <img class="dropdown-user-img" src="images/user/s4.png">
                        <div class="dropdown-user-details">
                           <div class="dropdown-user-details-name">Askbootstrap</div>
                           <div class="dropdown-user-details-email">iamosahan@gmail.com</div>
                        </div>
                     </h6>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="account.html">
                        <div class="dropdown-item-icon">
                           <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings">
                              <circle cx="12" cy="12" r="3"></circle>
                              <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
                           </svg>
                        </div>
                        Account
                     </a>
                     <a class="dropdown-item" href="#">
                        <div class="dropdown-item-icon">
                           <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out">
                              <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                              <polyline points="16 17 21 12 16 7"></polyline>
                              <line x1="21" y1="12" x2="9" y2="12"></line>
                           </svg>
                        </div>
                        Logout
                     </a>
                  </div>
               </li>
            </ul>
         </div>
      </nav>
      <!-- Navigation -->
      <nav class="navbar navbar-expand-lg navbar-light bg-white osahan-nav-mid px-0 border-top shadow-sm">
         <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
               <ul class="navbar-nav">
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Home
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdownPortfolio">
                        <a class="dropdown-item" href="index.html">Home 1</a>
                        <a class="dropdown-item" href="index2.html">Home 2</a>
                        <a class="dropdown-item" href="index3.html">Home 3</a>
                     </div>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="about.html">About</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="contact.html">Contact</a>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Pages
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdownPortfolio">
                        <a class="dropdown-item" href="product.html">Product List</a>
                        <a class="dropdown-item" href="product2.html">Product List 2</a>
                        <a class="dropdown-item" href="product-detail.html">List Detail</a>
                        <a class="dropdown-item" href="profile.html">Profile</a>
<a class="dropdown-item" href="company-profile.html">Company Profile</a>
<a class="dropdown-item" href="alerts.html">Alerts</a>
<a class="dropdown-item" href="messages.html">Messages</a>
                     </div>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Other Pages
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdownBlog">
                        <a class="dropdown-item" href="login.html">Login</a>
                        <a class="dropdown-item" href="register.html">Register</a>
                        <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                        <a class="dropdown-item" href="faq.html">FAQ</a>
                        <a class="dropdown-item" href="404.html">404 Page</a>
                        <a class="dropdown-item" href="blank.html">Blank Page</a>
                     </div>
                  </li>
               </ul>
            </div>
            <ul class="navbar-nav ml-auto">
               <li class="nav-item">
                  <a class="nav-link" href="become-a-seller.html">
                  <i class="fa fa-fw fa-trophy"></i>
                  <span>Become A Seller</span></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link">
                  <img class="country-flag img-fluid" src="images/flag/india.png">
                  <span>English</span>
                  </a>
               </li>
            </ul>
         </div>
      </nav>
      <div class="bg-dark pt-5 pb-5">
         <div class="container">
            <div class="row">
               <div class="col-md-7 text-center mx-auto my-4">
                  <!-- Title -->
                  <div class="mb-4">
                     <h1 class="display-4 text-white mb-0"><span class="font-weight-bold">고객센터</span></h1>
                  </div>
                  <!-- End Title -->
                  <!-- Input -->
                  <form class="input-group input-group-lg input-group-borderless mb-4">
                     <div class="input-group-prepend">
                        <span class="input-group-text bg-white border-0" id="askQuestions">
                        <span class="fa fa-search"></span>
                        </span>
                     </div>
                     <input type="search" class="form-control border-0 shadow-none" placeholder="질문하기" aria-label="Ask a question" aria-describedby="askQuestions">
                  </form>
                  <!-- End Input -->
                  
                  
                  <!-- End Text/Links -->
               </div>
            </div>
         </div>
      </div>
      <div class="py-5">
         <div class="container mx-auto col-md-8">
            <div class="row">
               <!-- Main Content -->
               <div class="col-md-6">
					<div class="box shadow-sm rounded bg-white mb-4">
						<div class="p-4 d-flex align-items-center">
							<i><img src="images/inquiry.png" height="50"></i>
							<!-- <i class="mdi mdi-message-text-outline display-4"></i>-->
							<div class="ml-4">
								<h5 class="font-weight-normal text-dark mb-3 mt-0">1:1 문의</h5>
								<p class="mb-0 text-muted">궁금한 점이 있으세요?
								고객님의 문의사항 해결을 위해 최선을 다하겠습니다.
								</p>
							</div>
						</div>
						<div class="overflow-hidden border-top d-flex align-items-center p-4">
                    	    <a class="font-weight-bold d-block" href="inquiry.html"> 1:1 상담작성 </a>
                        	<i class="mdi mdi-arrow-right ml-auto text-primary"></i>
                     </div>
					</div>
				</div>
               <div class="col-md-6">
                  <div class="box shadow-sm rounded bg-white mb-4">
                     <div class="p-4 d-flex align-items-center">
                     	<i><img src="images/event.png" height="50"></i>
                        <!-- <i class="mdi mdi-lock-outline display-4"></i> -->
                        <div class="ml-4">
                           <h5 class="font-weight-normal text-dark mb-3 mt-0">이벤트</h5>
                           <p class="mb-0 text-muted">참여 하세요!
                           	<br>다양한 이벤트가 준비 되어 있어요.</br>
                           </p>
                        </div>
                     </div>
                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
                        <a class="font-weight-bold d-block" href="client_event.html"> 이벤트 응모 및 결과 </a>
                        <i class="mdi mdi-arrow-right ml-auto text-primary"></i>
                     </div>
                  </div>
               </div>
				<div class="col-md-6">
                  <div class="box shadow-sm rounded bg-white mb-4">
                     <div class="p-4 d-flex align-items-center">
                     	<i><img src="images/questions.png" height="50"></i>
                        <!-- <i class="mdi mdi-lock-outline display-4"></i> -->
                        <div class="ml-4">
                           <h5 class="font-weight-normal text-dark mb-3 mt-0">문의사항</h5>
                           <p class="mb-0 text-muted">문의 답변 확인하세요.
                           </p>
                        </div>
                     </div>
                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
                        <a class="font-weight-bold d-block" href="client_inquiry.html"> 궁금하다면? </a>
                        <i class="mdi mdi-arrow-right ml-auto text-primary"></i>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <!-- Main Content -->
               <div class="col-md-12">
                  <div id="syncing">
                     <!-- Title -->
                     <div class="mb-3 mt-4">
                        <h4 class="font-weight-semi-bold">공지사항</h4>
                     </div>
                     <p class="listLength">총 <strong class="num">8</strong>개</p>
                     <div class="tableList">
						<table>
							<colgroup>
								<col style="width:80px;">
								<col>
								<col style="width:130px;">
							</colgroup>
								<tbody>
									<tr>
										<td>12</td>
										<td class="left"><a
											href="notice1.html">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">콜라겐 크림 럭키드로우 이벤트 당첨자 발표</span>
										</a></td>
										<td>2024-03-13</td>
										<td>100</td>
									</tr>
									<tr>
										<td>11</td>
										<td class="left"><a
											href="/kr/ko/NtcView.do?seq=8776&amp;schText=&amp;schKey=ttl&amp;pageNo=1">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">[당첨자 안내] 그린카 제휴 프로모션 댓글 이벤트 당첨자
													공지</span>
										</a></td>
										<td>2024-03-08</td>
										<td>20</td>
									</tr>
									<tr>
										<td>10</td>
										<td class="left"><a
											href="/kr/ko/NtcView.do?seq=8775&amp;schText=&amp;schKey=ttl&amp;pageNo=1">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">당첨자 안내 - 2/29(목) 디아일 어드벤처 에디션
													론칭 라이브</span>
										</a></td>
										<td>2024-03-08</td>
										<td>8</td>
									</tr>
									<tr>
										<td>9</td>
										<td class="left"><a
											href="/kr/ko/NtcView.do?seq=8773&amp;schText=&amp;schKey=ttl&amp;pageNo=1">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">당첨자 안내 - 비타C 패드 본품 체험단 리뷰 베스트
													리뷰</span>
										</a></td>
										<td>2024-03-05</td>
										<td>8</td>
									</tr>
									<tr>
										<td>8</td>
										<td class="left"><a
											href="/kr/ko/NtcView.do?seq=8772&amp;schText=&amp;schKey=ttl&amp;pageNo=1">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">[이니 라이브] 당첨자 안내 - 2/22(목)
													심톨x레티놀 기획전 라이브</span>
										</a></td>
										<td>2024-02-29</td>
										<td>88</td>
									</tr>
									<tr>
										<td>7</td>
										<td class="left"><a
											href="/kr/ko/NtcView.do?seq=8771&amp;schText=&amp;schKey=ttl&amp;pageNo=1">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">[당첨자 발표] 2월 설맞이 이벤트 결제금액 100%
													리워드 당첨자 발표 안내</span>
										</a></td>
										<td>2024-02-28</td>
										<td>18</td>
									</tr>
									<tr>
										<td>6</td>
										<td class="left"><a
											href="/kr/ko/NtcView.do?seq=8768&amp;schText=&amp;schKey=ttl&amp;pageNo=1">
												<span class="cateIcon"> <span>이벤트 공지</span>
											</span> <span class="subject">[이니 라이브] 당첨자 안내 - 2/13 빅세일 모닝
													라이브</span>
										</a></td>
										<td>2024-02-21</td>
										<td>800</td>
									</tr>
								</tbody>
							</table>
						</div>
                     <!-- End Syncing Accordion -->
                  </div>
                  <div class="footer-pagination text-center">
            				<nav aria-label="Page navigation example">
               					<ul class="pagination">
                  					<li class="page-item">
                     					<a class="page-link" href="#" aria-label="Previous">
                        					<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
                        					<!-- <span class="sr-only"></span>-->
                     					</a>	
                  					</li>
                  					<li class="page-item"><a class="page-link" href="#">1</a></li>
                  					<li class="page-item active"><a class="page-link" href="#">2</a></li>
                  					<li class="page-item"><a class="page-link" href="#">4</a></li>
                  					<li class="page-item"><a class="page-link" href="#">5</a></li>
                  					<li class="page-item">
                     					<a class="page-link" href="#" aria-label="Next">
                        					<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
                        					<!-- <span class="sr-only"></span>-->
                     					</a>
                  					</li>
               					</ul>
            				</nav>
         				</div>
               </div>
            </div>
         </div>
      </div>
      <footer class="bg-white">
         <div class="container">
            <div class="d-flex justify-content-between">
               <div class="footer-list">
                  <h2>Categories</h2>
                  <ul class="list">
                     <li><a href="#">Graphics &amp; Design</a></li>
                     <li><a href="#">Digital Marketing</a></li>
                     <li><a href="#">Writing &amp; Translation</a></li>
                     <li><a href="#">Video &amp; Animation</a></li>
                     <li><a href="#">Music &amp; Audio</a></li>
                     <li><a href="#">Programming &amp; Tech</a></li>
                     <li><a href="#">Business</a></li>
                     <li><a href="#">Lifestyle</a></li>
                     <li><a href="#">Sitemap</a></li>
                  </ul>
               </div>
               <div class="footer-list">
                  <h2>About</h2>
                  <ul class="list">
                     <li><a href="#">Careers</a></li>
                     <li><a href="#">Press &amp; News</a></li>
                     <li><a href="#">Partnerships</a></li>
                     <li><a href="#">Privacy Policy</a></li>
                     <li><a href="#">Terms of Service</a></li>
                     <li><a href="#">Intellectual Property Claims</a></li>
                     <li><a href="#" target="_blank">Investor Relations</a></li>
                  </ul>
               </div>
               <div class="footer-list">
                  <h2>Support</h2>
                  <ul class="list">
                     <li><a href="#" >Help &amp; Support</a></li>
                     <li><a href="#">Trust &amp; Safety</a></li>
                     <li><a href="#" >Selling on Maer
                        </a>
                     </li>
                     <li><a href="#">Buying on Maer
                        </a>
                     </li>
                  </ul>
               </div>
               <div class="footer-list">
                  <h2>Community</h2>
                  <ul class="list">
                     <li><a href="#">Events</a></li>
                     <li><a href="#">Blog</a></li>
                     <li><a href="#">Forum</a></li>
                     <li><a href="#">Community Standards</a></li>
                     <li><a href="#">Podcast</a></li>
                     <li><a href="#">Affiliates</a></li>
                     <li><a href="#">Invite a Friend</a></li>
                     <li><a href="#">Become a Seller</a></li>
                     <li><a href="#" >Maer
                        Elevate<small>Exclusive Benefits</small></a>
                     </li>
                  </ul>
               </div>
               <div class="footer-list">
                  <h2>More From Maer</h2>
                  <ul class="list">
                     <li><a href="#">Maer
                        Pro</a>
                     </li>
                     <li><a href="#">Maer
                        Studios</a>
                     </li>
                     <li><a href="#">Maer
                        Logo Maker</a>
                     </li>
                     <li><a href="#">Get Inspired</a></li>
                     <li><a href="#">ClearVoice<small>Content Marketing</small></a></li>
                     <li><a href="#">AND CO<small>Invoice Software</small></a></li>
                     <li><a href="#">Learn<small>Online Courses</small></a></li>
                  </ul>
               </div>
            </div>
            <div class="copyright">
               <div class="logo">
                  <a href="index.html">
                  <img src="images/logo.svg">
                  </a>
               </div>
               <p>© Copyright 2020 Maer. All Rights Reserved
               </p>
               <ul class="social">
                  <li>
                     <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                  </li>
               </ul>
            </div>
         </div>
   </body>
</html>