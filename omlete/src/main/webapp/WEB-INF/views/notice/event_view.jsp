<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <body>
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
                     	<i><img src="<c:url value="/images/board/inquiry.png"/>" height="50"></i>
                        <div class="ml-4">
                           <h5 class="font-weight-normal text-dark mb-3 mt-0">1:1 문의</h5>
                           <p class="mb-0 text-muted">궁금한 점이 있으세요?
								고객님의 문의사항 해결을 위해 최선을 다하겠습니다.
                           </p>
                        </div>
                     </div>
                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
                        <a class="font-weight-bold d-block" href="<c:url value="/board/inquiry"/>"> 1:1 상담작성 </a>
                        <i class="mdi mdi-arrow-right ml-auto text-primary"></i>
                     </div>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="box shadow-sm rounded bg-white mb-4">
                     <div class="p-4 d-flex align-items-center">
                     	<i><img src="<c:url value="/images/board/questions.png"/>" height="50"></i>
                        <div class="ml-4">
                           <h5 class="font-weight-normal text-dark mb-3 mt-0">문의사항</h5>
                           <p class="mb-0 text-muted">문의 답변 확인하세요.
                           </p>
                        </div>
                     </div>
                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
                        <a class="font-weight-bold d-block" href="<c:url value="/board/moon_view"/>"> 궁금하다면? </a>
                        <i class="mdi mdi-arrow-right ml-auto text-primary"></i>
                     </div>
                  </div>
               </div>
				<div class="col-md-6">
					<div class="box shadow-sm rounded bg-white mb-4">
						<div class="p-4 d-flex align-items-center">
							<i><img src="<c:url value="/images/board/notice.png"/>" height="50"></i>
							<!-- <i class="mdi mdi-lock-outline display-4"></i> -->
							<div class="ml-4">
								<h5 class="font-weight-normal text-dark mb-3 mt-0">공지사항</h5>
								<p class="mb-0 text-muted">궁금증을 해결해 드립니다.</p>
							</div>
						</div>
						<div
							class="overflow-hidden border-top d-flex align-items-center p-4">
							<a class="font-weight-bold d-block" href="<c:url value="/board/noticeList"/>"> 궁금하다면? </a>
							<i class="mdi mdi-arrow-right ml-auto text-primary"></i>
						</div>
					</div>
				</div>
			</div>
            <!-- Main Content --><!-- 몸체 부분 -->
            <div class="row">
            	<div class="main-page best-selling">
         			<div class="view_slider recommended pt-5">
	            		<div class="container">
              				<h4>이벤트 공지</h4>
            		 	</div>
	      			    <div class="container">
    	        			<div class="row">
    	        			<c:forEach var="notice" items="${noticeList}">
			            		<div class="col-md-3">
            			        	<a href="event1.html">
                    				<img class="img-fluid" src="${pageContext.request.contextPath}/${notice.noticeImage}" style="width: 500px">
                    				</a>
                    				<div class="inner-slider">
                        				<div class="inner-wrapper">
                        					<div class="d-flex align-items-center">
                              					<span class="seller-name">
                          					    <a href="event1.html">${notice.noticeTitle}
                              					</a>
                              					</span>
                           					</div>
                           					<div class="footer">
                            					<td>${notice.noticeCount}</td>
                              					<div class="price">
                              						<span>${notice.noticeDate}<br> ${notice.noticeTerm}</br></span>
                              					</div>
                           					</div>
                        				</div>
                     				</div>
                  				</div>
                  				</c:forEach>
	            			</div>
    			        </div>
			            <div class="footer-pagination text-center">
		            	  	<nav aria-label="Page navigation example">
		               			<ul class="pagination">
					            <!-- 이전 -->
		            			<c:choose>
		               				<c:when test="${pager.startPage > pager.blockSize }">
		                  				<li class="page-item">
		                     			<a class="page-link" aria-label="Previous" href="<c:url value="/board/noticeList"/>?pageNum=${pager.prevPage}">
		                        		<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
		                     			</a>	
		                  				</li>
		                  			</c:when>
		                  			<c:otherwise>
		                  				<li class="page-item">
		                     				<a class="page-link" aria-label="Previous" ?pageNum=${pager.prevPage}">
		                        			<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
		                     				</a>	
		                  				</li>
									</c:otherwise>
								</c:choose>
					            <!-- 페이지 번호 목록 -->
		            			<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
									<c:choose>
										<c:when test="${pager.pageNum != i }">
											<li class="page-item">
											<a class="page-link" href="<c:url value="/board/noticeList"/>?pageNum=${i}">${i}</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item active">
											<a class="page-link" ?pageNum=${i}">${i}</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 다음 -->
		                  		<c:choose>
		                  			<c:when test="${pager.endPage != pager.totalPage }">
		                  				<li class="page-item">
		                     			<a class="page-link" aria-label="Next" href="<c:url value="/board/noticeList"/>?pageNum=${pager.nextPage}">
		                        		<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
		                     			</a>
		                  				</li>
		                  			</c:when>
		                  			<c:otherwise>
		                  				<li class="page-item">
		                     			<a class="page-link" aria-label="Next" ?pageNum=${pager.nextPage}">
		                        		<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
		                     			</a>
		                  				</li>
									</c:otherwise>
								</c:choose>
					        </ul>
		    			</nav>
					</div>
         			</div>
         		</div>
         	</div>
         </div>
      </div>
   </body>
</html>