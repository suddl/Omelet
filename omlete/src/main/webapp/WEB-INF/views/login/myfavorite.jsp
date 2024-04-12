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
                        <form id="favoriteForm" action="<c:url value="/join/myfavorite/input"/>" method="post">
						    <input type="hidden" name="memberNo" value="${loginMember.memberNo }">
						    <div class="form-group">
						        <label class="mb-1">검색</label>
						        <div class="position-relative icon-form-control">
						            <i class="fa-solid fa-magnifying-glass position-absolute"></i>
						            <input type="text" class="form-control" id="movieName" name="movieName">
						        </div>
						    </div>
						    
						    <div id="searchResults">
						    </div>
						    
						    <input type="hidden" id="memberFavorite1" name="memberFavorite1">
						    
						    <button class="btn btn-success btn-block text-uppercase" type="submit" id="searchButton">저장</button>
						    <div class="py-3 d-flex align-item-center">
						        <a href="<c:url value="/login/member"/>">로그인</a> <span class="ml-auto"> 새로운 계정
						            <a href="<c:url value="/login/register"/>"> 회원가입 </a>
						        </span>
						    </div>
						</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
function handleResultClick(contentsNo, movieName) {
	$("#movieName").val(movieName); 
    $("#memberFavorite1").val(contentsNo); 
    $("#searchResults").hide(); 
}

$("#movieName").keyup(function() {
    var movieName = $("#movieName").val();
    if (movieName == "") { 
        $("#searchResults").hide();
        return;
    }
    
    $.ajax({
        type: "post",
        url: "<c:url value="/join/myfavorite"/>",
        data: {"movieName": movieName},
        dataType: "json",
        success: function(result) {
            var html = '';
            for (var i = 0; i < result.length; i++) {
                html += '<p onclick="handleResultClick(\'' + result[i].contentsNo + '\', \'' + result[i].contentsTname + '\')">' + result[i].contentsTname + '</p>';
            }
            $("#searchResults").html(html);
            $("#searchResults").show();
        },
        error: function(xhr) {
            alert("에러코드 = " + xhr.status);
        }
    });
});
</script>
</body>
</html>
