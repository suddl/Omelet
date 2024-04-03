<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 헤더 시작 -->
<nav class="navbar navbar-expand-lg navbar-light topbar static-top shadow-sm bg-white osahan-nav-top px-0">
   <div class="container">
      <!-- Sidebar Toggle (Topbar) -->
      <a class="navbar-brand" href="index.html"><img src="images/omelet.png" alt=""></a>
      <!-- Topbar Search -->
      <div class="container">
	      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	      	<span class="navbar-toggler-icon"></span>
	      </button> 
	      <div class="collapse navbar-collapse" id="navbarResponsive">
	         <ul class="navbar-nav">
	            <li class="nav-item dropdownx">
	               <a style="padding-right: 1.5rem" class="nav-link" href="about.html">영화</a>
	            </li>
	            <li class="nav-item">
	               <a style="padding-right: 1.5rem" class="nav-link" href="about.html">TV</a>
	            </li>
	         </ul>
	      </div>
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
	         <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
	            <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts"></div>
	         </li>
	         <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
	            <!-- 로그인 - href 연결하기 -->
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" href="javascript:void(0);" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                 	로그인
	            </a>
	         </li>
	         <li class="nav-item dropdown no-arrow no-caret dropdown-user">
	            <!-- 회원가입 - href 연결하기 -->
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            회원가입 
	            </a>
	         </li>
	      </ul>
   	  </div>
   </div>
</nav>
