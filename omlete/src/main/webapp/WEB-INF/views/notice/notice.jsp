<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
								<span>${data.noticeStatus == 1 ? '[공지]' : data.noticeStatus == 9? '[이벤트]' : ''}</span>
							</span>
							<span class="subject">
								${data.noticeTitle}
							</span>
							<span class="date">${fn:substring(data.noticeDate, 0, 10)}</span>
						</h3>
						<div class="listCont">
							<p style="margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; font-family: Dotum, 돋움; text-indent: 0in;">
							<span style="margin: 0px; padding: 0px; font-size: 10pt; font-family: 돋움, dotum; color: black;">${data.noticeContent}</span></p>
						</div>
						<div class="get-started1">
							<div class="content">
								<a class="c-btn c-fill-color-btn" href="<c:url value="/board/noticeList"/>">목록</a>
							</div>
						</div>
						<div class="btnWrap">
							<!-- <span class="btnRight">
							<a href="/kr/ko/NtcList.do?schKey=ttl&amp;schText=" class="btnType3">목록</a>
						</span> -->
						</div>
						</section>
						</div>
		        	  </div> 
		    	   </div>
		       </div>          
		   </body>
		</html>