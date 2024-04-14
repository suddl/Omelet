<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
	<section class="py-5">
		<div class="view_slider recommended">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
					<h3>내가 신청했던 이벤트 목록</h3>
						<c:if test="${empty eventUserList}">
							<p>아직 신청한 내역이 없습니다.</p>
						</c:if>
						<div class="view recent-slider recommended-slider">
				  			<c:forEach var="event" items="${eventUserList }">
									<div>
										<div class="inner-slider">
											<div class="inner-wrapper">
												<a href="<c:url value="/board/eventView"/>?noticeNo=${event.eventNo}">
													<img class="img-fluid" src="<c:url value="/"/>${event.noticeImage}" />
												</a>
												<div class="footer">
													<div class="price">
														<a href="#">
															${event.noticeTitle}
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="py-5">
         <div class="container">
            <div class="row-alert">
               <div class="col-lg-9 right">
                  <div class="box shadow-sm rounded bg-white mb-3">
                     <div class="box-title border-bottom p-3">
                        <h6 class="m-0">이벤트신청 내역(최신순, 20개)</h6>
                     </div>
                     <c:forEach var="record" items="${eventUserRecordList}" varStatus="outerLoop">
					    <c:forEach var="event" items="${eventUserList}" varStatus="innerLoop">
					        <c:if test="${innerLoop.index le 19}">
					            <div class="box-body p-0">
					                <div class="p-3 d-flex align-items-center border-bottom osahan-post-header">
					                    <div class="font-weight-bold mr-3">
					                        <div class="text-truncate">[${event.noticeTitle}]에 참여 했습니다.</div>
					                        <div class="small">${record.pointContent} : 포인트 ${record.pointExtent } 차감!</div>
					                    </div>
					                    <span class="ml-auto mb-auto">
					                        <!-- 
					                        <div class="btn-group">
					                            <button type="button" class="btn btn-light btn-sm rounded" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					                                <i class="mdi mdi-dots-vertical"></i>
					                            </button>
					                            <div class="dropdown-menu dropdown-menu-right" style="">
					                                <button class="dropdown-item" type="button"><i class="mdi mdi-delete"></i> Delete</button>
					                                <button class="dropdown-item" type="button"><i class="mdi mdi-close"></i> Turn Off</button>
					                            </div>
					                        </div>
					                        -->
					                        <br>
					                    </span>
					                </div>
					            </div>
					        </c:if>
					    </c:forEach>
					</c:forEach>
                  </div>
               </div>
            </div>
         </div>
      </div>
</body>
</html>