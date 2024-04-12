<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
								<div style="width: 300px" class="inner-slider">
									<div class="inner-wrapper">
									
									
									
										<div id="qa_write">
											<h1>리뷰 작성</h1>
											<div>
												<a href="#">
													<table class="table_review">
														<tr>
															<td style="width: 15%;"><img
																style="padding-left: 3px;" src="" /> nameas</td>
															<td></td>
															<td style="width: 20%;">행 1, 열 3</td>
														</tr>
														<tr>
															<td style="height: 80px;" rowspan="2"><img style=""
																alt="" src="" /></td>
															<td>행 2, 열 2</td>
															<td rowspan="2">행 2, 열 3</td>
														</tr>
														<tr>
															<td style="height: 80px;">행 3, 열 1</td>
														</tr>
														<tr>
															<td>좋아싫어 찜</td>
															<td></td>
															<td>신고</td>
														</tr>
													</table>
												</a>
											</div>
										</div>



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