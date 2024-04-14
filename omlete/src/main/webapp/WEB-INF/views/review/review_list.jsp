<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
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
                    
            <div id="qa_write">
			<div style="display: flex; justify-content: center; margin-bottom: 20px;">
				<table class="table_review">
					<tr>
						<a href="<c:url value="${member.memberId }"/>">
							<td style="width: 15%;">
								<div>
									<img style="padding-left: 3px;" src="<c:url value="${member.memberbadge }"/>" /> 
								</div>
								<div id="memberId">${member.memberId}</div>
							</td>
						<td style="border-right: hidden;"></td>
						<td style="width: 20%;">
							<img alt="star" src='<c:url value="images/star.svg"/>'>
							<c:out value="${review.reviewStar }"/>
						</td>
						</a>
					</tr>
					<tr>
						<a href="<c:url value="/detail/detail?no=${movie.contentsNo}"/>">
							<td style="height: 80px;" rowspan="2">
								<img style="" alt="contentsPoster" src="https://image.tmdb.org/t/p/original${movie.contentsPoster }"/>" />
							</td>
						</a>
						<a href="<c:url value="/mypage/writeReview?reviewNo?"/>"> <%-- 확실치 않음 --%>
							<td colspan="2">
								${contents.contentTname }
							</td>
						</a>
					</tr>
					<tr>
						<td style="height: 80px;" colspan="2">
							${review.reviewContent }
						</td>
					</tr>
					<tr>
						<div class="interaction-icons d-flex align-items-center">
							<button type="button" id="upBtn">
								<img style="height: 20px; width: 20px;" class="like"
									src="<c:url value="/images/like_or_hate/thumbs-up-regular.svg"/>">
									<i class="fas fa-thumbs-up"></i><span>${reviewUp }</span>
							</button>
                            <button type="button" class="btn btn-outline-primary mr-2">
                            </button>
                            <button type="button" id="downBtn">
								<img style="height: 20px; width: 20px;" alt="hate"
									src="<c:url value="/images/like_or_hate/thumbs-down-regular.svg"/>">
								<i class="fas fa-thumbs-down"></i><span>${reviewDown }</span>
							</button>
                            <button type="button" id="jjimBtn">
                 		  		<c:choose>
                 		  			<c:when test="${member.memberId == null }">
                 		  				<img alt="jjim" src="<c:url value="/images/like_or_hate/heart-solid.svg"/>">
                 		  			</c:when>
                 		  			<c:otherwise>
                 		  				<img alt="jjim" class="jjim" src="<c:url value="/images/like_or_hate/heart-regular.svg"/>">
                 		  			</c:otherwise>
                 		  		</c:choose>           		  		
                 		  	</button>
                        </div>
						<td></td>
						<td>
							<img alt="" src="<c:url value="/images/ellipsis-solid.svg"/>">
						</td>
					</tr>
				</table>
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