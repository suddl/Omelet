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
        <section class="py-5 bg-dark inner-header">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">공지사항</h1>
                  <!--  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><span class="text-success">24.3.25(일) ~ 24.3.31(일)</span></p>
                  </div>-->
               </div>
            </div>
         </div>
      </section>
      </div>
      <div class="py-5">
         <div class="container mx-auto col-md-8">
            <div class="row">
               <!-- Main Content -->
            </div>
            <div class="row">
               <!-- Main Content -->
               <div class="col-md-12">
                  <div id="syncing">
                     <!-- Title -->
                     <div class="mb-3 mt-4">
                        <h4 class="font-weight-semi-bold">고객센터</h4>
                     </div>
                     <section class="listView">
						<h3 class="listTit">
							<span class="cateIcon">
								<span>이벤트 공지</span>
							</span>
							<span class="subject">
								콜라겐 크림 럭키드로우 이벤트 당첨자 발표
							</span>
							<span class="date">2024-03-13</span>
						</h3>
						<div class="listCont">
							<p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">안녕하세요</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">,&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">고객님</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">!</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">오늘도 이니스프리를 찾아주셔서 감사합니다</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">.</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">&nbsp;</span></p><p style="margin: 0pt 0in; font-family: Dotum, 돋움; text-indent: 0in; line-height: normal; word-break: keep-all;"><font color="#ef007c"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; font-weight: bold;">콜라겐크림 럭키드로우 이벤트</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; font-weight: bold;">에</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; font-weight: bold;">&nbsp;당첨</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; font-weight: bold;">&nbsp;</span></font><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">되신 것을 축하드립니다</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">.</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">&nbsp;</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><u style="margin: 0px; padding: 0px;"><span style="font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; font-weight: bold;">1. 3/13(</span><span style="margin: 0px; padding: 0px; font-size: 10pt; color: black; font-weight: bold;"><font face="맑은 고딕"><span style="font-family: 돋움, dotum; font-size: 10pt;">수</span></font></span></u><u style="font-family: Dotum, 돋움; margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; font-weight: bold;">)&nbsp;</span></u><u style="font-family: Dotum, 돋움; margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; font-weight: bold;">개별 안내</span></u></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><u style="font-family: Dotum, 돋움; margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; font-weight: bold;"><br></span></u></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">-&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">고객님께&nbsp;&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">[</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">마이페이지</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">] [</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">회원정보</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">]&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">내 휴대전화번호에 기재된 번호로 별도 개별 안내됩니다</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">.</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: Calibri; color: black;"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><font style="margin: 0px; padding: 0px;" color="#000000"><b><u><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum;">2.&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum;">혜택 안내 및 유의 사항</span></u></b></font></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><font style="margin: 0px; padding: 0px;" color="#000000"><b><u><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum;"><br></span></u></b></font></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">1)&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">혜택&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">:&nbsp;1등 IPAD AIR (1명)&nbsp;</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2등 뷰티포인트&nbsp;100,000</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">P</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;">2)&nbsp;</span><span style="font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;">일정&nbsp;</span><span style="font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;">:- IPAD AIR 배송일정은 별도 안내 있을 예정입니다.</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="text-indent: 0in; font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;">- 뷰티포인트 적립 일자: 3/14(</span><span style="text-indent: 0in; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;"><font face="맑은 고딕"><span style="font-family: 돋움, dotum; font-size: 10pt;">목</span></font></span><span style="text-indent: 0in; font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;">)&nbsp;</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in; font-family: 돋움, dotum; margin: 0px; padding: 0px; font-size: 10pt; color: black; vertical-align: baseline;"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">3)&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">뷰티포인트 사용 기한&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">: 2024년 5월 31일</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">&nbsp;23:59&nbsp;</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">이전</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">4)<span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum;">&nbsp;</span></span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">기타</span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">-&nbsp;</span><b style="margin: 0px; padding: 0px;"><u style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">미사용 뷰티포인트의 소멸에 대한 별도 알림은 없습니다</span><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black; vertical-align: baseline;">.</span></u></b><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: Calibri; color: black; vertical-align: baseline;"></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><br></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><u style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: Calibri; color: black; font-weight: bold;"><br></span></u></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><font color="#ef007c"><u><span style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; font-weight: bold;">3.&nbsp;</span></span><span style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; font-weight: bold;">당첨자</span></span></u></font></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;"><span style="text-indent: 0in;"><br></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font color="#000000" face="맑은 고딕"><span style="font-size: 13.3333px;"><b><span style="font-family: 돋움, dotum; font-size: 10pt;">1등: iPAD AIR</span></b></span></font></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font color="#000000" face="맑은 고딕"><span style="font-size: 13.3333px;"><b><span style="font-family: 돋움, dotum; font-size: 10pt;"><br></span></b></span></font></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;">&nbsp;<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKMAAAAyCAYAAAAwVmtmAAAFV0lEQVR4Ae2d3ZHqMAyFUxcFpY6UwBtV8EoB1LDDCyVQhHfkREZWIv8Q4hhHzDAmjqNYx5+PTfbu3s4YY/7+/qDQl6CA6iMI84Vqqm0H8WjFF+I3F0L12W5IqbYdHAzDoG/VYDcGgEF4W2dUGHUy7skA+q7CqI64myPiBFAYFcLdIawXxuvDmNfdXBSSOSSXu3mZh7l+qs0abddcm9jf8s4ISbnXy9wvbJ8mJn0x95e7cPlDAxB78nDwYjB6F6dr613mKUtiiOPCxi8RPHRDWuKty+wZbdZkZttjkjAk8mnSMFA/DuMox3tVuMDsozmFYFyh7Sj5Ze7EFKxPx4XGiHwuCOPobI+rP5Os4I/rWwgx6dad8Woe3AkHppkII2s3DXqqtseDURKS1wdhZC4amWl0Caj+s5C3BxTXCvNPrRfucUwY6ZKDQg7MEQTBBusS7cLoQee0mbYtuHKEoFuhrcLoBM+BEXcVUvm7sKbD+M7dbXkAUoXR3/8Fl8LQrKZ7JdEZM+7lQP+ha4S8PUhTNcT8eXvhHsdzRr4ZnwTzxIa6mWDgnLkv8o0dB6b6EvLkzs6+mHC4XE6s3VQf13acrAeEcQKNuyAfgBmMP+RuDo7P+mzhIcstPx5EGNdpC5LLr2liFxgX7EOZ54wwWF7m3AmWnBEHdpz92OHFkgxkcMuwEpotY1sAMTmeTwjGVdqixoGySRhjIIhJA4wL8GI8GCg+eHiulTIGYyxPUdsAhBhzzbUYI1LiHCznjJEOzfeMKJTCGFymY7rC+TVArbk2pW/DgCxW9O8ZxaSPsUwHtwDqjOhMWgZBSZz9GkPmCK2xnmVaB/X9c/qDaaEwHmzAa3ZmhVFhrMaJHYz624HyXqZmN2mpb95vB8KBvmQFVB9Zm7VnqLb2CwytWBu8xetVn+1GlWqrMCboTAVLaK5NMhSg2u4L46033elsnhmdjzV9nk/mdP5mRP3zLzHN15wvByPA1nXT+2RmjGTBeDO9i4Uxx5LCVwuMt77zJgU/XjOALV1bBkYLYm9uqJw9ZkBKMN56byAxxFLJB7kpGCUdcuuXhKukrgCMT3M+daZ3JI6ZAygdrVQYw0jkQie1D99l17Pbw/g8m1NHXBHT5fUcRnTPc2/6M8SYA42hsGzSGSUdcutRpIrLMjAufjGBfR+BlMNoRRtddf7Fpq49o3V53MNCriwXPkn4MaTqxejYFsZIOuTWV0wi+9ug23ybBgf8FEYY1P5mYPDoim4MwMgHbC50iT3jCBGZVNbxO+/JAIePH9sYVCPreiSmpENu/VyiqmrKOCN1QEw/tkxbN5iAmwFdC4zL/eBwcfj846UYdJ8Nn5d0yK1H4estt4dxWmJ8Z5uWJVoJs5y6Q1CzpQGcX7C5M/IJhV1gufjwGev07hEUOiku86R0bTBu42UBGA2obzrqjvaYLbNsAMO6twYjWZLDiTd9tgyMIKEFEB9QMxDxfJYzYqyFcopTxhnnuYATUpcPOmPi/rdpCqfkysEYUzPLGWPBxvObw2jnmA+em3RkYoVhHJdtb+WwcY/nlgpjGteuFRVsQt4+1Hc/6oR9MJtYMRghjnVTsl+k22l388Y/UG23ebSTKiAbwNTLQu1KOOPS/eG+3k+Xlhpp3UyBemCcda3OCiqY1EPuhFI7rfcVoNru64x+v6o9ooJBJ2+9v7ezrkifHFSbSX0do9oqjAnjQwUbm8NjJvqN3oczIaQ2mRSg2iqMCVhQwRKaa5MMBai29v8OhAp9qwZ7M6DOmDCL6exNaK5NMhSg2iqMCcJRwRKaa5MMBai2CmOCcFSwhObaJEMBqu0/sWH+GrJQhLQAAAAASUVORK5CYII=" alt=""></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font face="Dotum, 돋움"><br></font></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font face="Dotum, 돋움"><b><span style="font-family: 돋움, dotum; font-size: 10pt;">2등: 뷰티포인트 100,000P</span></b></font></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font face="Dotum, 돋움"><br></font></span></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font face="Dotum, 돋움"><span style="font-family: 돋움, dotum; font-size: 10pt;">&nbsp;</span></font></span><img src="data:image/png;base64,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" alt=""></p><p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in;"><span style="text-indent: 0in;"><font face="Dotum, 돋움"><br></font></span></p><p class="MsoNormal" style="font-family: Dotum, 돋움;"><span lang="EN-US" style="margin: 0px; padding: 0px; line-height: 12.84px;"><o:p style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 나눔고딕, NanumGothic, sans-serif;"><font color="#000000" style="margin: 0px; padding: 0px;"><span style="font-family: 돋움, dotum; font-size: 10pt;">감사합니다.</span></font></span></o:p></span></p> 
						</div>
						<div class="get-started1">
							<div class="content">
								<a href="client_notice.html" class="c-btn c-fill-color-btn">목록</a>
							</div>
						</div>
						<div class="btnWrap">
							<!-- <span class="btnRight">
							<a href="/kr/ko/NtcList.do?schKey=ttl&amp;schText=" class="btnType3">목록</a>
						</span> -->
						</div>
							<ul class="listNav">
								<li><span class="tit">이전</span> <a
									href="/kr/ko/NtcView.do?seq=8779&amp;schKey=ttl&amp;schText=&amp;pageNo=1">
										<span class="cateIcon"> <span>이벤트 공지</span>

									</span> <span class="subject">당첨자 안내 - 3/14(목) 3월 멤버십세일 오프닝 라이브</span>
								</a> <span class="date">2024-03-21</span></li>
								<li class="current"><span class="tit">현재</span> <span
									class="cateIcon"> <span>이벤트 공지</span>

								</span> <span class="subject">콜라겐 크림 럭키드로우 이벤트 당첨자 발표</span> <span
									class="date">2024-03-13</span></li>
								<li><span class="tit">다음</span> <a
									href="/kr/ko/NtcView.do?seq=8776&amp;schKey=ttl&amp;schText=&amp;pageNo=1">
										<span class="cateIcon"> <span>이벤트 공지</span>

									</span> <span class="subject">[당첨자 안내] 그린카 제휴 프로모션 댓글 이벤트 당첨자
											공지</span>
								</a> <span class="date">2024-03-08</span></li>
							</ul>
						</section>
                      <div>
                     <!-- End Syncing Accordion -->
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