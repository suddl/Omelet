<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%-- 리뷰 리스트 페이지에서는 명대사, 짧은글, 긴글 카테고리별로 볼 수 있게 하고, 한 페이지에 10개씩 볼 수 있게 페이징 처리 할 것입니다 --%>
<!DOCTYPE html>
<html>
<head>
<!-- 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style type="text/css">
#reviewchoose {
	display: inline-block;
}

#ingichoose {	
	font-size: 20px;
	font-weight: 500;
	border: 1px solid black;
	padding: 5px 12px;
	box-sizing: border-box;
	border-radius: 24px;
}

#choishinchoose {
	font-size: 20px;
	font-weight: 500;
	border: 1px solid black;
	padding: 5px 12px;
	box-sizing: border-box;
	border-radius: 24px;
}

.col-md-6 {
	max-width: 80%;
	margin-left: auto;
    margin-right: auto;
}

.mb-2 {
	margin-left: 125px;
}

#reviewchoose {
	padding-left: 20px;
}

/* writer-image 클래스의 스타일 */
.writer-image {
    display: flex; /* Flexbox 레이아웃 사용 */
    align-items: center; /* 요소들을 세로 중앙 정렬 */
    text-decoration: none; /* 링크의 밑줄 제거 */
    margin-bottom: 20px; /* 하단 여백 추가 */
}

/* writer-full-part 클래스의 스타일 */
.writer-full-part {
    margin-left: 10px; /* 왼쪽 여백 추가 */
}

/* writer-name-part 클래스의 스타일 */
.writer-name-part {
    display: flex; /* Flexbox 레이아웃 사용 */
    align-items: center; /* 요소들을 세로 중앙 정렬 */
}

/* star 클래스의 스타일 */
.star {
    display: flex; /* Flexbox 레이아웃 사용 */
    align-items: center; /* 요소들을 세로 중앙 정렬 */
    margin-left: 10px; /* 왼쪽 여백 추가 */
}

/* 작성 시간을 표시하는 p 태그의 스타일 */
.writer-full-part p:last-child {
    margin-top: 5px; /* 작성 시간과 위 요소 사이의 여백 추가 */
}

table {
	border-collapse: collapse;
	width: 50%;
}

td {
	border: 1px solid black;
	padding: 8px;
	text-align: center;
}
</style>
</head>
   <body>
      <!--    header -->
      <!-- Navigation -->
      <!-- Inner Header - 없앰 -->
      <!-- End Inner Header -->
      <!-- header - 헤더 부분 없애기 -->
      <div class="main-page best-selling">
         <div class="view_slider recommended pt-5">
            <div class="container">
				<div
					class="sorting-div d-flex align-items-center justify-content-between">
					<p style="font-size: 24px; font-weight: 700" class="mb-2">지금 뜨는
						코멘트 - 명대사</p>
					<div class="sorting d-flex align-items-center"></div>
				</div>
				<!-- 최신 리뷰, 인기 리뷰 기능 넣기 - href -->
               <div style="margin: 15px 0px;">
                 <ul style="padding: 0px 105px 16px; text-align: left;"> 
                   <%--
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="ingichoose" type="button" href="<c:url value=""/>">인기</a>X
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="">최신</a> X
                   </li>
                   --%>
                   
                   <%-- 사용해보기
                   		<c:choose>
                   			<c:otherwise>
                   			</c:otherwise>
                   		</c:choose>
                   --%>
                   
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="<c:url value="/review/list?reviewKind=1"/>">명대사</a>
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="<c:url value="/review/list?reviewKind=2"/>">짧은글</a>
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="<c:url value="/review/list?reviewKind=3"/>">긴글</a>
                   </li>
                 </ul>
               </div>
            </div>
            
            <%-- 리뷰 리스트들 사용하기
            <c:forEach var="review" items="${reviewList }">
            </c:forEach>
            --%>
                    
           <div class="main-page py-5">
         <div class="container">
            <div class="row-center">
               <div class="col-lg-8 left">
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
               				<c:forEach var="review" items="${reviewList}" >
                              <div class="right">
                                 <h4>
                                    ${review.memberNickname }
                                    <span class="gig-rating text-body-2">
                                       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15"
                                          height="15">
                                          <path fill="currentColor"
                                             d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                          </path>
                                       </svg>
                                       ${review.reviewStar }
                                    </span>
                                 </h4>
                                 <div class="country d-flex align-items-center">
                                    <div class="country-name font-accent">${review.contentsTname }</div>
                                 </div>
                                 <div class="review-description">
                                    <p>
                                       ${review.reviewContent }
                                    </p>
                                 </div>
                                 <span class="publish py-3 d-inline-block w-100">${fn:substring(review.reviewDate, 0, 10)}</span>
                                 <div class="helpful-thumbs">
                                    <div class="helpful-thumb text-body-2">
                                       <span class="fit-icon thumbs-icon">
                                          <svg width="14" height="14" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                                             <path
                                                d="M13.5804 7.81165C13.8519 7.45962 14 7 14 6.43858C14 5.40843 13.123 4.45422 12.0114 4.45422H10.0932C10.3316 3.97931 10.6591 3.39024 10.6591 2.54516C10.6591 0.948063 10.022 0 8.39207 0C7.57189 0 7.26753 1.03682 7.11159 1.83827C7.01843 2.31708 6.93041 2.76938 6.65973 3.04005C6.01524 3.68457 5.03125 5.25 4.44013 5.56787C4.38028 5.59308 4.3038 5.61293 4.22051 5.62866C4.06265 5.39995 3.79889 5.25 3.5 5.25H0.875C0.391754 5.25 0 5.64175 0 6.125V13.125C0 13.6082 0.391754 14 0.875 14H3.5C3.98325 14 4.375 13.6082 4.375 13.125V12.886C5.26354 12.886 7.12816 14.0002 9.22728 13.9996C9.37781 13.9997 10.2568 14.0004 10.3487 13.9996C11.9697 14 12.8713 13.0183 12.8188 11.5443C13.2325 11.0596 13.4351 10.3593 13.3172 9.70944C13.6578 9.17552 13.7308 8.42237 13.5804 7.81165ZM0.875 13.125V6.125H3.5V13.125H0.875ZM12.4692 7.5565C12.9062 7.875 12.9062 9.1875 12.3159 9.48875C12.6856 10.1111 12.3529 10.9439 11.9053 11.1839C12.1321 12.6206 11.3869 13.1146 10.3409 13.1246C10.2504 13.1255 9.32247 13.1246 9.22731 13.1246C7.23316 13.1246 5.54296 12.011 4.37503 12.011V6.44287C5.40611 6.44287 6.35212 4.58516 7.27847 3.65879C8.11368 2.82357 7.83527 1.43153 8.3921 0.874727C9.78414 0.874727 9.78414 1.84589 9.78414 2.54518C9.78414 3.69879 8.94893 4.21561 8.94893 5.32924H12.0114C12.6329 5.32924 13.1223 5.88607 13.125 6.44287C13.1277 6.99967 12.9062 7.4375 12.4692 7.5565ZM2.84375 11.8125C2.84375 12.1749 2.54994 12.4688 2.1875 12.4688C1.82506 12.4688 1.53125 12.1749 1.53125 11.8125C1.53125 11.4501 1.82506 11.1562 2.1875 11.1562C2.54994 11.1562 2.84375 11.4501 2.84375 11.8125Z">
                                             </path>
                                          </svg>
                                       </span>
                                       <span class="thumb-title">좋아요</span>
                                    </div>
                                    <div class="helpful-thumb text-body-2 ml-3">
                                       <span class="fit-icon thumbs-icon">
                                          <svg width="14" height="14" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                                             <path
                                                d="M0.419563 6.18835C0.148122 6.54038 6.11959e-07 7 5.62878e-07 7.56142C2.81294e-05 8.59157 0.876996 9.54578 1.98863 9.54578L3.90679 9.54578C3.66836 10.0207 3.34091 10.6098 3.34091 11.4548C3.34089 13.0519 3.97802 14 5.60793 14C6.42811 14 6.73247 12.9632 6.88841 12.1617C6.98157 11.6829 7.06959 11.2306 7.34027 10.9599C7.98476 10.3154 8.96875 8.75 9.55987 8.43213C9.61972 8.40692 9.6962 8.38707 9.77949 8.37134C9.93735 8.60005 10.2011 8.75 10.5 8.75L13.125 8.75C13.6082 8.75 14 8.35825 14 7.875L14 0.875C14 0.391754 13.6082 -3.42482e-08 13.125 -7.64949e-08L10.5 -3.0598e-07C10.0168 -3.48226e-07 9.625 0.391754 9.625 0.875L9.625 1.11398C8.73647 1.11398 6.87184 -0.000191358 4.77272 0.00038257C4.62219 0.000300541 3.74322 -0.000438633 3.65127 0.000382472C2.03027 -1.04643e-06 1.12867 0.981667 1.18117 2.45566C0.76754 2.94038 0.564868 3.64065 0.682829 4.29056C0.342234 4.82448 0.269227 5.57763 0.419563 6.18835ZM13.125 0.875L13.125 7.875L10.5 7.875L10.5 0.875L13.125 0.875ZM1.53079 6.4435C1.09375 6.125 1.09375 4.8125 1.6841 4.51125C1.31436 3.88891 1.64713 3.05613 2.09467 2.81605C1.86791 1.37941 2.61313 0.885417 3.65906 0.875355C3.74962 0.874535 4.67753 0.875355 4.77269 0.875355C6.76684 0.875355 8.45704 1.98898 9.62497 1.98898L9.62497 7.55713C8.5939 7.55713 7.64788 9.41484 6.72153 10.3412C5.88632 11.1764 6.16473 12.5685 5.6079 13.1253C4.21586 13.1253 4.21586 12.1541 4.21586 11.4548C4.21586 10.3012 5.05107 9.78439 5.05107 8.67076L1.9886 8.67076C1.36708 8.67076 0.877707 8.11393 0.874973 7.55713C0.872266 7.00033 1.09375 6.5625 1.53079 6.4435ZM11.1563 2.1875C11.1563 1.82506 11.4501 1.53125 11.8125 1.53125C12.1749 1.53125 12.4688 1.82506 12.4688 2.1875C12.4688 2.54994 12.1749 2.84375 11.8125 2.84375C11.4501 2.84375 11.1563 2.54994 11.1563 2.1875Z">
                                             </path>
                                          </svg>
                                       </span>
                                       <span class="thumb-title">안좋아요</span>
                                    </div>
                                 </div>
                              </div>
               				</c:forEach>
               	           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
		<div id="message" style="color: red;"></div>
        </div>
         
        <%-- 페이지 번호 출력 --%>
		<div style="display: flex; justify-content: center; margin: 30px 0px;">
		<c:choose>
			<c:when test="${pager.startPage > pager.blockSize }">
				<a href="<c:url value="/review/list"/>?pageNum=${pager.prevPage}">[이전]</a>
			</c:when>
			<c:otherwise>
				[이전]
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
			<c:choose>
				<c:when test="${pager.pageNum != i }">
					<a href="<c:url value="/review/list"/>?pageNum=${i}">[${i}]</a>
				</c:when>
				<c:otherwise>
					[${i}]
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:choose>
			<c:when test="${pager.endPage != pager.totalPage }">
				<a href="<c:url value="/review/list"/>?pageNum=${pager.nextPage}">[다음]</a>
			</c:when>
			<c:otherwise>
				[다음]
			</c:otherwise>
		</c:choose>
		</div>

         <%-- 
         <div class="footer-pagination text-center">
            <nav aria-label="Page navigation example">
               <ul class="pagination">
                  <li class="page-item">
                     <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
                        <!--                    <span class="sr-only"></span>-->
                     </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item active"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item">
                     <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
                        <!--                    <span class="sr-only"></span>-->
                     </a>
                  </li>
               </ul>
            </nav>
         </div>
         --%>
      </div>
      <script type="text/javascript">
     
      <%-- //좋아요 눌렀을 때 id 와 title 변경하기, url 부분들 바꾸기 --%> 
      $("img").filter(".btn btn-outline-danger mr-2").click(function() {
    		var productNum = $(this).attr("id");
    		var title = $(this).attr("title");
    		
    		<%-- 로그인 하지 않았을 시 로그인 페이지로 이동--%>
    		if(${empty(loginMember)}) {
    			location.href="/login/login";
    		} else {
    			<%-- 로그인 시 좋아요 눌렀을 시 동작되는 ajax--%>
    			$.ajax({
    				type: "get",
    			    url : "<%=request.getContextPath()%>/main_page/main_like_action.jsp?productNum="+productNum+"&title="+title,
    			    dataType : "xml",
    			    success:function(xmlDoc){
    			    	var code = $(xmlDoc).find("code").text();
    			    	if(code=="success"){
    			    		var titleName = $(xmlDoc).find("title").text();
    			    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-red.png")
    			    		$("#"+productNum).attr("title", titleName);
    			    	} else{
    			    		var titleName = $(xmlDoc).find("title").text();
    			    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-black.png")
    			    		$("#"+productNum).attr("title", titleName);
    			    	}
    			    },
    			    error:function(xhr){
    			    	alert("[에러] = "+xhr.status);
    			    }
    			});
    		}    		
    	})
     
    	
    <%-- //싫어요 눌렀을 때 id 와 title 변경하기, url 부분들 바꾸기 --%> 
      $("img").filter(".btn btn-outline-danger mr-2").click(function() {
    		var productNum = $(this).attr("id");
    		var title = $(this).attr("title");
    		
    		<%-- 로그인 하지 않았을 시 로그인 페이지로 이동--%>
    		if(${empty(loginMember)}) {
    			location.href="/login/login";
    		} else {
    			<%-- 로그인 시 좋아요 눌렀을 시 동작되는 ajax--%>
    			$.ajax({
    				type: "get",
    			    url : "<%=request.getContextPath()%>/main_page/main_like_action.jsp?productNum="+productNum+"&title="+title,
    			    dataType : "xml",
    			    success:function(xmlDoc){
    			    	var code = $(xmlDoc).find("code").text();
    			    	if(code=="success"){
    			    		var titleName = $(xmlDoc).find("title").text();
    			    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-red.png")
    			    		$("#"+productNum).attr("title", titleName);
    			    	} else{
    			    		var titleName = $(xmlDoc).find("title").text();
    			    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-black.png")
    			    		$("#"+productNum).attr("title", titleName);
    			    	}
    			    },
    			    error:function(xhr){
    			    	alert("[에러] = "+xhr.status);
    			    }
    			});
    		}    		
    	})
    	
    	
    	
<%-- 하트 이미지 클릭 시 발생되는 이벤트 함수 --%>
$("img").filter(".jjim").click(function() {
	var productNum = $(this).attr("id");
	var title = $(this).attr("title");
	
	<%-- 로그인 하지 않았을 시 로그인 페이지로 이동--%>
	if(${empty(loginMember)}){
		location.href="<%=request.getContextPath()%>/main_page/main.jsp?group=login_page&worker=client_login";
	} else {
		<%-- 로그인 시 좋아요 눌렀을 시 동작되는 ajax--%>
		$.ajax({
			type: "get",
		    url : "<%=request.getContextPath()%>/main_page/main_like_action.jsp?productNum="+productNum+"&title="+title,
		    dataType : "xml",
		    success:function(xmlDoc){
		    	var code = $(xmlDoc).find("code").text();
		    	if(code=="success"){
		    		var titleName = $(xmlDoc).find("title").text();
		    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-red.png")
		    		$("#"+productNum).attr("title", titleName);
		    	} else{
		    		var titleName = $(xmlDoc).find("title").text();
		    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-black.png")
		    		$("#"+productNum).attr("title", titleName);
		    	}
		    },
		    error:function(xhr){
		    	alert("[에러] = "+xhr.status);
		    }
		});
	}
	
	
	
})
    	
      </script>
      <!-- Bootstrap core JavaScript -->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Contact form JavaScript -->
      <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <script src="js/jqBootstrapValidation.js"></script>
      <script src="js/contact_me.js"></script>
      <!-- Slick -->
      <script src="vendor/slick-master/slick/slick.js" type="text/javascript" charset="utf-8"></script>
      <!-- lightgallery -->
      <script src="vendor/lightgallery-master/dist/js/lightgallery-all.min.js"></script>
      <!-- select2 Js -->
      <script src="vendor/select2/js/select2.min.js"></script>
      <!-- Custom -->
      <script src="js/custom.js"></script>
   </body>
</html>