<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
									<p class="mb-0 text-muted">궁금한 점이 있으세요?<br>
									문의사항 해결을 위해 최선을 다하겠습니다.
									</p>
								</div>
							</div>
							<div class="overflow-hidden border-top d-flex align-items-center p-4">
	                    	    <a class="font-weight-bold d-block" href="<c:url value="/board/moonWrite"/>"> 1:1 상담작성 </a>
	                        	<i class="mdi mdi-arrow-right ml-auto text-primary"></i>
	                     </div>
						</div>
					</div>
	               <div class="col-md-6">
	                  <div class="box shadow-sm rounded bg-white mb-4">
	                     <div class="p-4 d-flex align-items-center">
	                     	<i><img src="<c:url value="/images/board/event.png"/>" height="50"></i>
	                        <div class="ml-4">
	                           <h5 class="font-weight-normal text-dark mb-3 mt-0">이벤트</h5>
	                           <p class="mb-0 text-muted">참여 하세요!
	                           	<br>다양한 이벤트가 준비 되어 있어요.</br>
	                           </p>
	                        </div>
	                     </div>
	                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
	                        <a class="font-weight-bold d-block" href="<c:url value="/board/eventList"/>"> 이벤트 응모 및 결과 </a>
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
	                           <p class="mb-0 text-muted">기다려주셔서 감사합니다! <br>문의 답변을 확인해주세요.
	                           </p>
	                        </div>
	                     </div>
	                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
	                        <a class="font-weight-bold d-block" href="<c:url value="/board/moonList"/>"> 궁금하다면? </a>
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
	                     <%-- 게시글 목록 출력 --%>
	                     <%-- <p class="listLength">총 <strong class="num">${fileBoard.noticeNo}</strong>개</p> --%>
	                     <div class="tableList">
							<table>
								<colgroup>
									<col style="width:80px;">
									<col>
									<col style="width:130px;">
								</colgroup>
									<tbody>
								<c:forEach var="notice" items="${noticeList}">
								    <tr>
								        <td>${notice.noticeNo}</td>
								        <td class="left">
								            <a href="<c:url value="/board/noticeView?noticeNo=${notice.noticeNo}" />">
								                <span class="cateIcon">
								                    <span>${notice.noticeStatus == 1 ? '[공지]' : notice.noticeStatus == 9 ? '[이벤트]' : ''}</span>
								                </span> 
								                <span class="subject">${notice.noticeTitle}</span>
								            </a>
								        </td>
								        <td class="left1">${fn:substring(notice.noticeDate, 0, 10)}</td>
								        <td class="left2">${notice.noticeCount}</td>
								    </tr>
								</c:forEach>
										 
									</tbody>
								</table>
							</div>
	                  </div>
	                  <div class="footer-pagination text-center">
	            	  	<nav aria-label="Page navigation example">
	               			<ul class="pagination">
				            <!-- 이전 -->
	            			<c:choose>
	               				<c:when test="${pager.startPage > pager.blockSize }">
	                  				<li class="page-item">
	                     			<a class="page-link" aria-label="Previous" href="<c:url value="/board/noticeList1"/>?pageNum=${pager.prevPage}">
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
   </body>
</html>