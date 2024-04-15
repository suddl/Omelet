<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
   <head>
   <style type="text/css">
	.rating {
	  float: none;
	  width: 200px;
	  display: flex;
	}
	.rating__input {
	  display: none;
	}
	.rating__label {
	  width: 20px;
	  overflow: hidden;
	  cursor: pointer;
	}
	.rating__label .star-icon {
	  width: 20px;
	  height: 40px;
	  display: block;
	  position: relative;
	  left: 0;
	  background-image: url("https://velog.velcdn.com/images/jellykelly/post/9957327f-f358-4c25-9989-5bb3dd5755d6/image.svg");
	  background-repeat: no-repeat;
	  background-size: 40px;
	}
	.rating__label .star-icon.filled {
	  background-image: url(" https://velog.velcdn.com/images/jellykelly/post/10caf033-b0ef-4d58-804b-6e33395e4ea5/image.svg");
	}
	.rating__label--full .star-icon {
	  background-position: right;
	}
	.rating__label--half .star-icon {
	  background-position: left;
	}
	.rating.readonly .star-icon {
	  opacity: 0.7;
	  cursor: default;
	}
	
	.b-con {
	    text-align: right; /* 버튼을 오른쪽으로 정렬합니다 */
	   
	}
	.b-con a{
	    
	     margin-left: 10px;
	}
	.profile-info{
		text-align: center;
	}
   </style>
 
   </head>
   <body>
      <div class="third-menu border-top">
         <div class="container">
            <div class="row d-flex align-items-center justify-content-between">
               <div class="col-lg-9 left">
                  <ul>
                     <li class="nav-overview selected"><a href="#overview">영화정보</a></li>
                     <li class="nav-description"><a href="#description">출연진</a></li>
                     <li class="nav-reviews"><a href="#reviews">리뷰</a></li>
                  </ul>
               </div>
               <div class="col-lg-3 right">
                  <ul class="d-flex align-items-center justify-content-end">
                     <li>
                     <c:if test="${result != null}">

					    <a class="like"> 
					    <c:if test="${result.check == 0}">
							<button>
	                        <i class="fa fa-heart" aria-hidden="true"></i>
	                        SaveX
	                        </button>
						  
						</c:if> 
						
					    <c:if test="${result.check == 1}">
					        <button>
	                        <i class="fa fa-heart" aria-hidden="true"></i>
	                        SaveO
	                        </button>
						</c:if>
						</a>
					</c:if>
                        
                     </li>
                     <li>
                        <span class="collect-count">138</span>
                     </li>
                     <li class="ml-2">
                        <button>
                        <i class="fa fa-share-alt" aria-hidden="true"></i>
                        Share
                        </button>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div class="main-page py-5">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 left">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">전체</a></li>
                        <li class="breadcrumb-item active" aria-current="page">${contents.contentsType}</li>
                     </ol>
                  </nav>
                  <h2>${contents.contentsTname}</h2>
                  <div id="overview" class="seller-overview d-flex align-items-center">
                     <div class="user-info d-flex">
                        <span class="user-info-rating d-flex">
                           <div class="star-rating-s15-wrapper">
                              <span class="star-rating-s15 rate-10">
                              </span>
                           </div>
                           <span class="total-rating-out-five">${review.reviewStar}</span>
                           <span class="total-rating">(36)</span>
                        </span>
                        
                     </div>
                   
                  </div>
                  <hr>
                  <div id="overview" class="seller-overview d-flex align-items-center">
                  	  <div class="wrap" style="margin-right:130px">
					    
					    <div class="rating">
					        <label class="rating__label rating__label--half" for="starhalf">
					            <input type="radio" id="starhalf" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(0)"></span>
					        </label>
					        <label class="rating__label rating__label--full" for="star1">
					            <input type="radio" id="star1" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(1)"></span>
					        </label>
					        <label class="rating__label rating__label--half" for="star1half">
					            <input type="radio" id="star1half" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(1.5)"></span>
					        </label>
					        <label class="rating__label rating__label--full" for="star2">
					            <input type="radio" id="star2" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(2)"></span>
					        </label>
					        <label class="rating__label rating__label--half" for="star2half">
					            <input type="radio" id="star2half" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(2.5)"></span>
					        </label>
					        <label class="rating__label rating__label--full" for="star3">
					            <input type="radio" id="star3" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(3)"></span>
					        </label>
					        <label class="rating__label rating__label--half" for="star3half">
					            <input type="radio" id="star3half"  class="rating__input" name="rating" checked>
					            <span class="star-icon" onclick="onStarClick(3.5)"></span>
					        </label>
					        <label class="rating__label rating__label--full" for="star4">
					            <input type="radio" id="star4" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(4)"></span>
					        </label>
					        <label class="rating__label rating__label--half" for="star4half">
					            <input for="" type="radio" id="star4half" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(4.5)" ></span>
					        </label>
					        <label class="rating__label rating__label--full" for="star5">
					            <input type="radio" id="star5" class="rating__input" name="rating" value="">
					            <span class="star-icon" onclick="onStarClick(5)" ></span>
					        </label>
					      
					        	
					        
					    </div>
					    
					  </div>
					  <div class="b-con">
                      <a href="<c:url value="/detail/writeReview"/>?no=${contents.contentsNo}"><button class="c-btn c-fill-color-btn">한줄리뷰</button></a>
                      <a href="<c:url value="/detail/writeReview"/>?no=${contents.contentsNo}"><button class="c-btn c-fill-color-btn">장문리뷰</button></a>
                      <a href="<c:url value="/detail/writeReview"/>?no=${contents.contentsNo}"><button class="c-btn c-fill-color-btn">명대사리뷰</button></a>
                  	  </div>
                  </div>
                  <div class="slider mt-4">
                     <div id="aniimated-thumbnials" class="slider-for slick-slider-single">
                        <a href="${contents.contentsPoster}">
                        <img class="img-fluid" src="${contents.contentsPoster}" />
                        </a>
                        <a href="${contents.contentsPhoto1}">
                        <img class="img-fluid" src="${contents.contentsPhoto1}" />
                        </a>
                        <a href="${contents.contentsPhoto2}">
                        <img class="img-fluid" src="${contents.contentsPhoto2}" />
                        </a>
                        <a href="${contents.contentsPhoto3}">
                        <img class="img-fluid" src="${contents.contentsPhoto3}" />
                        </a>
                     </div>
                     <div class="slider-nav slick-slider-single">
                        <div class="item-slick">
                           <img class="img-fluid" src="${contents.contentsPoster}"
                              alt="Alt">
                        </div>
                        <div class="item-slick">
                           <img class="img-fluid" src="${contents.contentsPhoto1}"
                              alt="Alt">
                        </div>
                        <div class="item-slick">
                           <img class="img-fluid" src="${contents.contentsPhoto2}"
                              alt="Alt">
                        </div>
                        <div class="item-slick">
                           <img class="img-fluid" src="${contents.contentsPhoto3}"
                              alt="Alt">
                        </div>
                     </div>
                  </div>
                  <div id="description" class="description">
                     
                     <c:choose>
						<c:when test="${empty contents.contentsTagline}">
						</c:when>
						<c:otherwise>
							<h3>${contents.contentsTagline}</h3>
						</c:otherwise>
					</c:choose>		    
                    <p>${contents.contentsOverview}</p>
                  </div>
                  <ul class="metadata">
                     <li class="metadata-attribute">
                        <p>등급</p>
                        <ul>
                        <c:choose>
                           <c:when test="${empty contents.contentsRating}">
                           <li>-</li>
                           </c:when>
                           <c:otherwise>
							<li>${contents.contentsRating}</li>
						   </c:otherwise>
						</c:choose>
                        </ul>
                     </li>
                     <li class="metadata-attribute">
                        <p>장르</p>
                        <ul>
                           <li>${contents.contentsGenre}</li>
                        </ul>
                     </li>
                     <li class="metadata-attribute">
                        <p>국가</p>
                        <ul>
                           <li>${contents.contentsCountries}</li>
                        </ul>
                     </li>
                  </ul>
                     <div class="stats-desc">
                        <ul class="user-stats">
                           <li>개봉일<strong>${contents.contentsStartdate}</strong></li>
                           <li>총 시간<strong>${contents.contentsRuntime}분</strong></li>
                           <li>Avg. Response Time<strong>1 hour</strong></li>
                        </ul>
                        <article class="seller-desc">
                           <div class="inner">
                              <h3 id="aboutSeller" >제작</h3>
                              <div class="profile-name">               
									<span class="user-status"><a class="seller-link" style="font-size:20px">${contents.contentsDirector}</a></span>
                           	  </div> 
                           	  <div class="profile-name">               
                           	  <span class="user-status"><a class="seller-link" style="font-size:20px">${contents.contentsStaff}</a></span>
                           	 </div>
                           </div>
                        </article>
                     </div>
                     <h3 id="aboutSeller">출연</h3>
                  <div class="profile-card">
                     <div class="user-profile-image d-flex">
                     <c:forEach var="actors" items="${actor}">
                       <div class="profile-info"> 
                        <label class="profile-pict" for="profile_image">
                        <img
                           src="https://image.tmdb.org/t/p/original${actors.actorImg }"
                           class="profile-pict-img img-fluid" alt="">
                        </label>
                        <div class="right">
                           <div class="profile-name">
                              <span class="user-status">
                                <c:choose>
								    <c:when test="${empty actors.actorName}">
								        <a href="#" class="seller-link">${actors.actorOname}</a>
								    </c:when>
								    <c:otherwise>
								        <a href="#" class="seller-link">${actors.actorName}</a>
								    </c:otherwise>
								</c:choose>
                              </span>
                           </div>
                        </div>
                       </div>
                      </c:forEach> 
                     </div>
                  </div>
                  
                 
                  <div id="reviews" class="review-section">
                     <div class="d-flex align-items-center justify-content-between mb-4">
                        <h4 class="m-0"> 37 Reviews </h4>
                        <select class="custom-select custom-select-sm border-0 shadow-sm ml-2">
                           <option>Most Relevant</option>
                           <option>Most Recent</option>
                        </select>
                     </div>
                     <div class=" row">
                        <div class="col-md-6">
                           <table class="stars-counters">
                              <tbody>
                                 <tr class="">
                                    <td>
                                       <span>
                                       <button
                                          class="fit-button fit-button-color-blue fit-button-fill-ghost fit-button-size-medium stars-filter">5
                                       Stars</button>
                                       </span>
                                    </td>
                                    <td class="progress-bar-container">
                                       <div class="fit-progressbar fit-progressbar-bar star-progress-bar">
                                          <div class="fit-progressbar-background">
                                             <span class="progress-fill" style="width: 97.2973%;"></span>
                                          </div>
                                       </div>
                                    </td>
                                    <td class="star-num">(36)</td>
                                 </tr>
                                 <tr class="">
                                    <td>
                                       <span>
                                       <button
                                          class="fit-button fit-button-color-blue fit-button-fill-ghost fit-button-size-medium stars-filter">4
                                       Stars</button>
                                       </span>
                                    </td>
                                    <td class="progress-bar-container">
                                       <div class="fit-progressbar fit-progressbar-bar star-progress-bar">
                                          <div class="fit-progressbar-background">
                                             <span class="progress-fill" style="width: 2.2973%;"></span>
                                          </div>
                                       </div>
                                    </td>
                                    <td class="star-num">(2)</td>
                                 </tr>
                                 <tr class="">
                                    <td>
                                       <span>
                                       <button
                                          class="fit-button fit-button-color-blue fit-button-fill-ghost fit-button-size-medium stars-filter">3
                                       Stars</button>
                                       </span>
                                    </td>
                                    <td class="progress-bar-container">
                                       <div class="fit-progressbar fit-progressbar-bar star-progress-bar">
                                          <div class="fit-progressbar-background">
                                             <span class="progress-fill" style="width: 0;"></span>
                                          </div>
                                       </div>
                                    </td>
                                    <td class="star-num">(0)</td>
                                 </tr>
                                 <tr class="">
                                    <td>
                                       <span>
                                       <button
                                          class="fit-button fit-button-color-blue fit-button-fill-ghost fit-button-size-medium stars-filter">2
                                       Stars</button>
                                       </span>
                                    </td>
                                    <td class="progress-bar-container">
                                       <div class="fit-progressbar fit-progressbar-bar star-progress-bar">
                                          <div class="fit-progressbar-background">
                                             <span class="progress-fill" style="width: 0;"></span>
                                          </div>
                                       </div>
                                    </td>
                                    <td class="star-num">(0)</td>
                                 </tr>
                                 <tr class="">
                                    <td>
                                       <span>
                                       <button
                                          class="fit-button fit-button-color-blue fit-button-fill-ghost fit-button-size-medium stars-filter">1
                                       Stars</button>
                                       </span>
                                    </td>
                                    <td class="progress-bar-container">
                                       <div class="fit-progressbar fit-progressbar-bar star-progress-bar">
                                          <div class="fit-progressbar-background">
                                             <span class="progress-fill" style="width: 0;"></span>
                                          </div>
                                       </div>
                                    </td>
                                    <td class="star-num">(0)</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        <div class="col-md-6">
                           <div class="ranking">
                              <h6 class="text-display-7">리뷰 종류별 개수</h6>
                              <ul>
                                 <li>명대사 리뷰<span>25<span
                                    class="review-star rate-10 show-one"></span></span>
                                 </li>
                                 <li>한줄 리뷰<span>15<span class="review-star rate-10 show-one"></span></span>
                                 </li>
                                 <li>장문 리뷰<span>5<span class="review-star rate-10 show-one"></span></span>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="review-list">
                     <ul>
                        <li>
                           <div class="d-flex">
                              <div class="left">
                                 <span>
                                 <img
                                    src="images/user/s5.png"
                                    class="profile-pict-img img-fluid" alt="">
                                 </span>
                              </div>
                              <div class="right">
                                 <h4>
                                    HappyCat
                                    <span class="gig-rating text-body-2">
                                       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15"
                                          height="15">
                                          <path fill="currentColor"
                                             d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                          </path>
                                       </svg>
                                       5.0
                                    </span>
                                 </h4>
                                 <div class="country d-flex align-items-center">
                                    <span>
                                    <img class="country-flag img-fluid"
                                       src="images/flag/india.png">
                                    </span>
                                    <div class="country-name font-accent">India</div>
                                 </div>
                                 <div class="review-description">
                                    <p>
                                       작품성이 좋고, 재미면에서도 훌륭합니다.
                                       다른사람들에게도 추천하고 싶어요!!
                                    </p>
                                 </div>
                                 <span class="publish py-3 d-inline-block w-100">Published 4 weeks ago</span>
                                 <div class="helpful-thumbs">
                                    <div class="helpful-thumb text-body-2">
                                       <span class="fit-icon thumbs-icon">
                                          <svg width="14" height="14" viewBox="0 0 14 14"
                                             xmlns="http://www.w3.org/2000/svg">
                                             <path
                                                d="M13.5804 7.81165C13.8519 7.45962 14 7 14 6.43858C14 5.40843 13.123 4.45422 12.0114 4.45422H10.0932C10.3316 3.97931 10.6591 3.39024 10.6591 2.54516C10.6591 0.948063 10.022 0 8.39207 0C7.57189 0 7.26753 1.03682 7.11159 1.83827C7.01843 2.31708 6.93041 2.76938 6.65973 3.04005C6.01524 3.68457 5.03125 5.25 4.44013 5.56787C4.38028 5.59308 4.3038 5.61293 4.22051 5.62866C4.06265 5.39995 3.79889 5.25 3.5 5.25H0.875C0.391754 5.25 0 5.64175 0 6.125V13.125C0 13.6082 0.391754 14 0.875 14H3.5C3.98325 14 4.375 13.6082 4.375 13.125V12.886C5.26354 12.886 7.12816 14.0002 9.22728 13.9996C9.37781 13.9997 10.2568 14.0004 10.3487 13.9996C11.9697 14 12.8713 13.0183 12.8188 11.5443C13.2325 11.0596 13.4351 10.3593 13.3172 9.70944C13.6578 9.17552 13.7308 8.42237 13.5804 7.81165ZM0.875 13.125V6.125H3.5V13.125H0.875ZM12.4692 7.5565C12.9062 7.875 12.9062 9.1875 12.3159 9.48875C12.6856 10.1111 12.3529 10.9439 11.9053 11.1839C12.1321 12.6206 11.3869 13.1146 10.3409 13.1246C10.2504 13.1255 9.32247 13.1246 9.22731 13.1246C7.23316 13.1246 5.54296 12.011 4.37503 12.011V6.44287C5.40611 6.44287 6.35212 4.58516 7.27847 3.65879C8.11368 2.82357 7.83527 1.43153 8.3921 0.874727C9.78414 0.874727 9.78414 1.84589 9.78414 2.54518C9.78414 3.69879 8.94893 4.21561 8.94893 5.32924H12.0114C12.6329 5.32924 13.1223 5.88607 13.125 6.44287C13.1277 6.99967 12.9062 7.4375 12.4692 7.5565ZM2.84375 11.8125C2.84375 12.1749 2.54994 12.4688 2.1875 12.4688C1.82506 12.4688 1.53125 12.1749 1.53125 11.8125C1.53125 11.4501 1.82506 11.1562 2.1875 11.1562C2.54994 11.1562 2.84375 11.4501 2.84375 11.8125Z">
                                             </path>
                                          </svg>
                                       </span>
                                       <span class="thumb-title">좋아요</span>
                                    </div>
                                    <div class="helpful-thumb text-body-2 ml-3">
                                       <span class="fit-icon thumbs-icon">
                                          <svg width="14" height="14" viewBox="0 0 14 14"
                                             xmlns="http://www.w3.org/2000/svg">
                                             <path
                                                d="M0.419563 6.18835C0.148122 6.54038 6.11959e-07 7 5.62878e-07 7.56142C2.81294e-05 8.59157 0.876996 9.54578 1.98863 9.54578L3.90679 9.54578C3.66836 10.0207 3.34091 10.6098 3.34091 11.4548C3.34089 13.0519 3.97802 14 5.60793 14C6.42811 14 6.73247 12.9632 6.88841 12.1617C6.98157 11.6829 7.06959 11.2306 7.34027 10.9599C7.98476 10.3154 8.96875 8.75 9.55987 8.43213C9.61972 8.40692 9.6962 8.38707 9.77949 8.37134C9.93735 8.60005 10.2011 8.75 10.5 8.75L13.125 8.75C13.6082 8.75 14 8.35825 14 7.875L14 0.875C14 0.391754 13.6082 -3.42482e-08 13.125 -7.64949e-08L10.5 -3.0598e-07C10.0168 -3.48226e-07 9.625 0.391754 9.625 0.875L9.625 1.11398C8.73647 1.11398 6.87184 -0.000191358 4.77272 0.00038257C4.62219 0.000300541 3.74322 -0.000438633 3.65127 0.000382472C2.03027 -1.04643e-06 1.12867 0.981667 1.18117 2.45566C0.76754 2.94038 0.564868 3.64065 0.682829 4.29056C0.342234 4.82448 0.269227 5.57763 0.419563 6.18835ZM13.125 0.875L13.125 7.875L10.5 7.875L10.5 0.875L13.125 0.875ZM1.53079 6.4435C1.09375 6.125 1.09375 4.8125 1.6841 4.51125C1.31436 3.88891 1.64713 3.05613 2.09467 2.81605C1.86791 1.37941 2.61313 0.885417 3.65906 0.875355C3.74962 0.874535 4.67753 0.875355 4.77269 0.875355C6.76684 0.875355 8.45704 1.98898 9.62497 1.98898L9.62497 7.55713C8.5939 7.55713 7.64788 9.41484 6.72153 10.3412C5.88632 11.1764 6.16473 12.5685 5.6079 13.1253C4.21586 13.1253 4.21586 12.1541 4.21586 11.4548C4.21586 10.3012 5.05107 9.78439 5.05107 8.67076L1.9886 8.67076C1.36708 8.67076 0.877707 8.11393 0.874973 7.55713C0.872266 7.00033 1.09375 6.5625 1.53079 6.4435ZM11.1563 2.1875C11.1563 1.82506 11.4501 1.53125 11.8125 1.53125C12.1749 1.53125 12.4688 1.82506 12.4688 2.1875C12.4688 2.54994 12.1749 2.84375 11.8125 2.84375C11.4501 2.84375 11.1563 2.54994 11.1563 2.1875Z">
                                             </path>
                                          </svg>
                                       </span>
                                       <span class="thumb-title">싫어요</span>
                                    </div>
                                 </div>
                                 <div class="response-item mt-4 d-flex">
                                    <div class="left">
                                       <span>
                                       <img
                                          src="images/user/s1.png"
                                          class="profile-pict-img img-fluid" alt="">
                                       </span>
                                    </div>
                                    <div class="right">
                                       <h4>
                                          야생곰발바닥
                                          <span class="gig-rating text-body-2">
                                             <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15"
                                                height="15">
                                                <path fill="currentColor"
                                                   d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                                </path>
                                             </svg>
                                             3.5
                                          </span>
                                       </h4>
                                       <div class="country d-flex align-items-center">
                                          <span>
                                          <img class="country-flag img-fluid"
                                             src="images/flag/india.png">
                                          </span>
                                          <div class="country-name font-accent">India</div>
                                       </div>
                                       <div class="review-description">
                                          <p>
                                             뭐 나쁘지는 않네요. 영화관 가서 보기에는 아까운 느낌이 들지만
                                             쿠폰을 쓰거나 ott에서 보면 괜찮다고 생각해요
                                          </p>
                                       </div>
                                       <span class="publish py-3 d-inline-block w-100">Published 1 weeks ago</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
                  <div class="tags">
                     <h3>태그</h3>
                     <ul class="d-flex">
                        <li>
                           <a href="#">추천</a>
                        </li>
                        <li>
                           <a href="#">종류</a>
                        </li>
                        <li>
                           <a href="#">장르</a>
                        </li>
                     </ul>
                  </div>
               </div>
               
            </div>
         </div>
      </div>
     
      <script type="text/javascript">
      	
		const rateWrap = document.querySelectorAll('.rating'),
			label = document.querySelectorAll('.rating .rating__label'),
			input = document.querySelectorAll('.rating .rating__input'),
			labelLength = label.length,
			opacityHover = '0.5';
		
		let stars = document.querySelectorAll('.rating .star-icon');
		let rating = 0;
		checkedRate();
		
		if (loginMember) {
		    rating = "${review.reviewStar}"; // review.reviewStar는 서버에서 받아온 초기 별점 값입니다.
		    if(rating !== null && rating !== undefined && rating !== ''){
		    	document.addEventListener('DOMContentLoaded', function() {
					console.error("rating: "+rating);
				    // 페이지가 로드되면서 rating 값이 있을 경우 별점 채우기
				    if (rating > 0) {
				    	filledRate(rating, labelLength);
				    }
				});
		    }
    
		}
		
		rateWrap.forEach(wrap => {
			wrap.addEventListener('mouseenter', () => {
				if (!loginMember) return; 
		    	stars = wrap.querySelectorAll('.star-icon');
		
		    	stars.forEach((starIcon, idx) => {
		        	starIcon.addEventListener('mouseenter', () => {
		            	if (wrap.classList.contains('readonly') == false) {
		                	initStars(); // 기선택된 별점 무시하고 초기화
		               		filledRate(idx, labelLength);  // hover target만큼 별점 active
		
		                // hover 시 active된 별점의 opacity 조정
		                for (let i = 0; i < stars.length; i++) {
		                    if (stars[i].classList.contains('filled')) {
		                        stars[i].style.opacity = opacityHover;
		                    }
		                }
		            }
		        	});
		
			        starIcon.addEventListener('mouseleave', () => {
			            if (wrap.classList.contains('readonly') == false) {
			                starIcon.style.opacity = '1';
			                checkedRate(); // 체크된 라디오 버튼 만큼 별점 active
			            }
			        });
			
			        // rate wrap을 벗어날 때 active된 별점의 opacity = 1
			        wrap.addEventListener('mouseleave', () => {
			            if (wrap.classList.contains('readonly') == false) {
			                starIcon.style.opacity = '1';
			            }
			        });
			
			        // readonnly 일 때 비활성화
			        wrap.addEventListener('click', (e) => {
			            if (wrap.classList.contains('readonly')) {
			                e.preventDefault();
			            }
			        });
		    	});
			});
		});
		
		//target보다 인덱스가 낮은 .star-icon에 .filled 추가 (별점 구현)
		function filledRate(index, length) {
			if (index <= length) {
		    	for (let i = 0; i <= index; i++) {
		        	stars[i].classList.add('filled');
		    	}
			}
		}
		
		//선택된 라디오버튼 이하 인덱스는 별점 active
		function checkedRate() {
			let checkedRadio = document.querySelectorAll('.rating input[type="radio"]:checked');

			initStars();
			
			checkedRadio.forEach(radio => {
		    	let previousSiblings = prevAll(radio);
		
			    for (let i = 0; i < previousSiblings.length; i++) {
			        previousSiblings[i].querySelector('.star-icon').classList.add('filled');
			    }
		
		    	radio.nextElementSibling.classList.add('filled');
		
		    	function prevAll() {
		        	let radioSiblings = [],
		            	prevSibling = radio.parentElement.previousElementSibling;
		
		        	while (prevSibling) {
		            	radioSiblings.push(prevSibling);
		            	prevSibling = prevSibling.previousElementSibling;
		        	}
		        	return radioSiblings;
		    	}
			});
			
			
		}
		
		//별점 초기화 (0)
		function initStars() {
			for (let i = 0; i < stars.length; i++) {
		    	stars[i].classList.remove('filled');
			}
		}

		
		function onStarClick(ratingValue) {
		    // 클릭된 별의 값을 서버에 전송
		    submitRating(ratingValue);
		    console.error("starValue:", ratingValue);
		}

		// 서버로 별점을 전송하는 함수
		function submitRating(ratingValue) {
		    // 전송할 데이터를 준비합니다

		    var data = ratingValue;
		    var contentsNo = ${contents.contentsNo};
		    
		    console.error("contentsNo:", contentsNo);
			$.ajax({
	            method: "post", 
	            url: "<c:url value="/detail/rate"/>", 
	            data: { "data": data, "contentsNo": contentsNo}, 
	            dataType: "text",
	            success: function(response) {
	            	if (response == "ok") {
	                	console.error("보내따~~~~~ ");
	
	                }else{
	                	console.error("안됬따~~~~~ ");
	                }
	            },
	            error: function() {
	                console.error("서버 오류: ");
	            }
        	});
		}
		
		$(document).ready(function() {
			 $(".like").on("click", function(){
				
			 	$.ajax({
			 		url : "/detail/wish",
			 		type: 'GET',
			 		data: {'contentsNo': contentsNo},
			 		success:function(data){
					
			 			if(data==1){
			 				like2 = true;
			 				alert("상품 찜 하셨습니다.");
			 				$('#like').attr("src","${pageContext.request.contextPath }/resources/img/core-img/heart-fill.svg");
			 				var result = confirm('찜목록으로 이동하시겠습니까?');
			 				if (result) {
			 					//yes
			 	 				//찜 리스트 페이지 생성 후 -> 찜리스트 페이지 이동으로 변경 
			 					location.href='/mypage/likeListAll '; 
			 					
			 	 			} 
			 				
			 			}
			 			else if(data == -1){
			 				alert("로그인이 필요한 서비스입니다. ");
			 				
			 				
			 			} 		 			
			 			else {
			 				like2 =false;
			 				alert("상품 찜 취소하셨습니다. ");
			 				$('#like').attr("src","${pageContext.request.contextPath }/resources/img/core-img/heart.svg");
			 			}
			 			
			 		},
			 		error:function(error){
			 			console.log(error);
			 		}
					
					
			 	});
			 });
		}); 
	
	</script>
   </body>
</html>