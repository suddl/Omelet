<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <div class="bg-white">
        <div class="container">
            <div class="row justify-content-center align-items-center d-flex vh-100">
                <div class="col-lg-4 mx-auto">
                    <div class="osahan-login py-4">
                        <div class="text-center mb-4">
                            <a href="index.html"><img src="<c:url value="/images/omlete_logo.png"/>" alt=""></a>
                            <h5 class="font-weight-bold mt-3">나의 인생작품</h5>
                            <p class="text-muted">나의 인생작을 입력해주세요.</p>
                        </div>
                        <form id="favoriteForm" action="/login/myfavorite" method="post">
                            <!-- 첫 번째 작품 등록 -->
                            <div class="form-group">
                                <label class="mb-1">검색</label>
                                <div class="position-relative icon-form-control">
                                    <i class="fa-solid fa-magnifying-glass position-absolute"></i>
                                    <input type="text" class="form-control" id="movieName" name="movieName">
                                </div>
                            </div>
                            
                            <div id="searchResults">
							</div>
							<button class="btn btn-success btn-block text-uppercase" type="button" id="searchButton">검색</button>
                            <div class="py-3 d-flex align-item-center">
                                <a href="<c:url value="/login/member"/>">로그인</a> <span class="ml-auto"> 새로운 계정
                                    <a href="<c:url value="/login/register"/>"> 회원가입 </a>
                                </span>
                            </div>
                            <c:forEach var="myfavoriteList" items="${myfavoriteList }">
                            	<input type="hidden" id="myfavoriteList" value="${myfavoriteList.contentsTname}">
						  	</c:forEach>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
$(document).ready(function() {
    // 검색 버튼 클릭 시
    $("#searchButton").click(function() {
        var keyword = $("#movieName").val(); // 검색어 가져오기
        
       //var movieList = $('#myfavoriteList').val();

        console.log("keyword=" + keyword);
        console.log("movieList=" + movieList);

        // Ajax를 사용하여 검색 결과를 가져오기
        $.ajax({
            url: "<c:url value="/join/myfavorite"/>", // 검색 요청을 처리하는 URL
            type: "POST",
            data: { "movieName": keyword }, // 변수명을 수정하여 정상적으로 값을 전달
            success: function(responseData) {
                console.log(responseData); // 응답 데이터를 콘솔에 출력하여 형식 확인
                
                // 받은 데이터를 처리하여 화면에 출력
                var table = '<table class="table"><thead><tr><th>영화 제목</th></tr></thead><tbody>';
                for (var i = 0; i < responseData.length; i++) {
                    table += '<tr><td>' + responseData[i].title + '</td></tr>'; 
                }
                table += '</tbody></table>';
                $("#searchResults").html(table);
            },
            error: function(xhr, status, error) {
                console.error("Error:", error); // 오류가 발생한 경우 콘솔에 오류 출력
            }
        });
    });
});
</script>
</body>
</html>
