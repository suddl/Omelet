<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value="/css/mainPage.css" />" />
<body>
	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-white osahan-nav-mid px-0 border-top shadow-sm">
		<div class="container">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<!-- Begin Page Content -->
	<!--       social -->
	<ul class="trusted-by bg-white border-bottom">

	</ul>
	<!--       social -->
	<!--       recent -->
	<!--       freelancer projects -->
	<section class="py-5">
    <div class="view_slider recommended">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>최신 리뷰</h3>
                    <div class="view recent-slider recommended-slider">
                        <div>
                            <div class="inner-slider">
                                <div class="inner-wrapper">
                                
                                	<article class="d-flex flex-column justify-content-center">
                                		<div class="d-flex align-items-center">                                		       
                               				<img src="<c:url value="/images/service-05.jpg" />" class="img-fluid rounded-circle" alt="프로필 사진" style="width: 20px; height: 20px;">
                               				<div class="ml-2">
                               					user-id-01230
                               				</div>
                             			
                                		</div>                                		
                                		<div class="d-flex align-items-center">
										    <div class="my-2 review-title-img-wrapper">
										    	<img src="<c:url value="/images/service-05.jpg" />" alt="영화 포스터" style="width: 60px; height: 100px;">
										    </div>
										    <div class="my-2 mx-1">
											    <div class="my-2 review-title clamp-text-1">
											    	더 뉴크 파이날 : 레볼루션
											    </div>
											    <div class="my-2 review-contents clamp-text-3">
											        이 영화는 보지는 않았지만 정말 재밌다고 소문이 자자하더군요. 저도 보진 않을 거지만 정말 재밌다고 하니까 꼭 보시고 추천인 ID : nayana 부탁드립니다. 새해 복 많이 받으세요.
										        </div>
									   		</div>									    
										</div>
										<hr class="hr-3"/>                                 
	                                    <!-- 좋아요, 싫어요, 찜하기 버튼 -->
	                                    <div class="interaction-icons d-flex align-items-center">
	                                        <button type="button" class="btn btn-outline-primary mr-2">
	                                            <i class="fas fa-thumbs-up"></i><span>10</span>
	                                        </button>
	                                        <button type="button" class="btn btn-outline-danger mr-2">
	                                            <i class="fas fa-thumbs-down"></i><span>12</span>
	                                        </button>
<!-- 	                                        <button type="button" class="btn btn-outline-secondary"> -->
<!-- 	                                            <i class="fas fa-bookmark"></i> -->
<!-- 	                                        </button> -->
	                                    </div>
                                    </article>
                                    
                                    
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


	<!--       freelancer projects -->
	<!--       recent -->
	<section class="py-5">
		<div class="view_slider recommended">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
					
<!-- 					favoriteMovies 가 모델에 있는지 NULL 검사 후 해당 뷰 생성 -->
						<h3>내가 찜한 영화</h3>
						<div class="view recent-slider recommended-slider">

							<c:forEach var="movie" items="${latestMovies }">

								<div>
									<a
										href="<c:url value="/detail/detail?no=${movie.contentsNo}" />">
										<img style="height: 383px" class="img-fluid"
										src="https://image.tmdb.org/t/p/original${movie.contentsPoster }" />
										${movie.contentsTname }
									</a>
									<div class="inner-slider"></div>
								</div>

							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--       recent -->
	<!--       services-->
	<section class="py-5">
		<div class="view_slider recommended">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h3>최신 영화</h3>
						<div class="view recent-slider recommended-slider">

							<c:forEach var="movie" items="${latestMovies }">

								<div>
									<a
										href="<c:url value="/detail/detail?no=${movie.contentsNo}" />">
										<img style="height: 383px" class="img-fluid"
										src="https://image.tmdb.org/t/p/original${movie.contentsPoster }" />
									</a>
									<div class="inner-slider"></div>
								</div>

							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--       services-->
	<!--       testimonials -->
	<section class="py-5">
		<div class="view_slider recommended">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h3>인기 영화</h3>
						<div class="view recent-slider recommended-slider">

							<c:forEach var="movie" items="${popularMovies }">

								<div>
									<a
										href="<c:url value="/detail/detail?no=${movie.contentsNo}" />">
										<img style="height: 383px" class="img-fluid"
										src="https://image.tmdb.org/t/p/original${movie.contentsPoster }" />
									</a>
									<div class="inner-slider"></div>
								</div>

							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--       testimonials -->
	<!-- get started -->
	<div>
		<div class="get-started">
			<div class="content">
				<h2>★714,349,238 개의 평가가</h2>
			</div>
		</div>
	</div>
	<script type="text/javascript">
<%-- 업 이미지 클릭 시 발생되는 이벤트 함수
$("img").filter(".wishHeart").click(function() {
	var productNum = $(this).attr("id");
	var title = $(this).attr("title");
	
	<%-- 로그인 하지 않았을 시 로그인 페이지로 이동
	if(<%=login%>==0){
		location.href="<%=request.getContextPath()%>/template/main.jsp?group=template&worker=login";
	} else {
		 로그인 시 좋아요 눌렀을 시 동작되는 ajax
		$.ajax({
			type: "get",
		    url : "<%=request.getContextPath()%>/template/main_like_action.jsp?reviewNo="+reviewNo+"&title="+title,
		    dataType : xml,
		    success:function(xmlDoc){
		    	var code = $(xmlDoc).find("code").text();
		    	if(code=="success"){
		    		var titleName = $(xmlDoc).find("title").text();
		    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-red.png") 아직 업 이미지 안 넣음 
		    		$("#"+productNum).attr("title", titleName);
		    	} else{
		    		var titleName = $(xmlDoc).find("title").text();
		    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-black.png") 아직 다운 이미지 안 넣음
		    		$("#"+productNum).attr("title", titleName);
		    	}
		    },
		    error:function(xhr){
		    	alert("[에러] = "+xhr.status);
		    }
		});
	}	
});
--%>
</script>
</body>
</html>