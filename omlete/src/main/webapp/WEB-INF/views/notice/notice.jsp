<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <body>
        <section class="py-5 bg-dark inner-header">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">공지사항</h1>
               </div>
            </div>
         </div>
      </section>
      <div class="py-5">
         <div class="container mx-auto col-md-8">
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
								<span>${data.noticeStatus}</span>
							</span>
							<span class="subject">
								${data.noticeTitle}
							</span>
							<span class="date">${data.noticeDate}</span>
						</h3>
						<div class="listCont">
							<p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;">
							<span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">${data.noticeContent}</span></p>
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
						</div>
		        	  </div> 
		    	   </div>
		       </div>          
		   </body>
		</html>