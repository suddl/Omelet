<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<body>
	<div class="py-5">
		<div class="container mx-auto col-md-8">
			<div class="row">
               <!-- Main Content -->
               <div class="col-md-12">
                  <div id="syncing">
                     <!-- Title -->
                     <div class="mb-3 mt-4">
                        <h4 class="font-weight-semi-bold">문의사항 목록</h4>
                     </div>
						<div id="counselList">
							<div class="tableType noLine2">
								<table>
									<colgroup>
										<col style="width: 100px;">
										<col >
										<col style="width: 170px;">
										<col style="width: 170px;">
										<col style="width: 170px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">No.</th>
											<th scope="col">제목</th>
											<th scope="col">작성자</th>
											<th scope="col">등록일</th>
											<th scope="col">답변상태</th>
										</tr>
									</thead>
								    <tbody style="padding-top: 10px;">
									    <c:forEach var="moon" items="${moonList}">
									    
									        <tr>
									            <td>${moon.moonNo}</td>
									            <td class="left" style="text-align: center">
									                <a href="<c:url value='/board/moonView?moonNo=${moon.moonNo}'/>">
									                    <span>${moon.moonTitle}</span>
									                </a>
									            </td>
									            <td>${moon.memberNickname}</td>
									            <td>${moon.moonDate}</td>
									            <!-- <td>${moon.moonContent}</td>  -->
									        </tr>
									    </c:forEach>
									</tbody>
								</table>
							</div>
						</div>
                  </div>
         		  <div class="footer-pagination text-center">
	            	  	<nav aria-label="Page navigation example">
	               			<ul class="pagination">
				            <!-- 이전 -->
				           <div class="footer-pagination text-center">
							    <nav aria-label="Page navigation example">
							        <ul class="pagination">
							            <!-- 이전 -->
							            <c:choose>
							                <c:when test="${pager.startPage > pager.blockSize }">
							                    <li class="page-item">
							                        <a class="page-link" aria-label="Previous" href="<c:url value="/mypage/writeMoon"/>?pageNum=${pager.prevPage}">
							                            <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
							                        </a>	
							                    </li>
							                </c:when>
							                <c:otherwise>
							                    <li class="page-item">
							                        <a class="page-link" aria-label="Previous" href="?pageNum=${pager.prevPage}">
							                            <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
							                        </a>	
							                    </li>
							                </c:otherwise>
							            </c:choose>
							            
							            <!-- 페이지 번호 목록 -->
							            <c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}" step="1">
							                <c:choose>
							                    <c:when test="${pager.pageNum != i}">
							                        <li class="page-item">
							                            <a class="page-link" href="?pageNum=${i}">${i}</a>
							                        </li>
							                    </c:when>
							                    <c:otherwise>
							                        <li class="page-item active">
							                            <a class="page-link" href="?pageNum=${i}">${i}</a>
							                        </li>
							                    </c:otherwise>
							                </c:choose>
							            </c:forEach>
							            
							            <!-- 다음 -->
							            <c:choose>
							                <c:when test="${pager.endPage < pager.totalPage}">
							                    <li class="page-item">
							                        <a class="page-link" aria-label="Next" href="?pageNum=${pager.nextPage}">
							                            <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
							                        </a>
							                    </li>
							                </c:when>
							                <c:otherwise>
							                    <li class="page-item">
							                        <a class="page-link" aria-label="Next" href="?pageNum=${pager.nextPage}">
							                            <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
							                        </a>
							                    </li>
							                </c:otherwise>
							            </c:choose>
							        </ul>
							    </nav>
							</div>
				        </ul>
	    			</nav>
				</div>
               </div>
            </div>
		</div>
	</div>
</body>
</html>