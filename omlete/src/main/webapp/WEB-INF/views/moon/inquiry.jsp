<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>
    <!-- Inner Header -->
    <section class="section-padding bg-dark py-5 inner-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="mt-0 mb-3 text-white">1:1 문의</h1>
                    <div class="breadcrumbs">
                        <p class="mb-0 text-white"><span class="text-success">문의하신 내용은 고객센터에서 확인 후 영업일 기준 1~3일 이내에 답변 드리도록 할게요.
                            <br>* 운영 시간: 평일 10:00 ~ 18:00 (주말, 공휴일 제외)</br></span></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 몸체 -->
    <!-- End Inner Header -->
    <!-- Contact Us -->
    <section class="py-5 bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 section-title text-left mb-4">
                    <h2>문의 등록</h2>
                </div>
                <form class="col-lg-12 col-md-12" name="sentMessage" method="post">
                    <div class="homepage-search-form">
                        <div class="form-row">
                            <div class="col-lg-3 col-md-3 col-sm-12 form-group">
                                <div class="location-dropdown">
                                    <i class="icofont-location-arrow"></i>
                                    <label for="moonTitle">문의제목<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="moonTitle" name="moonTitle" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label for="moonContent">문의 내용 <span class="text-danger">*</span></label>
                            <textarea rows="10" cols="100" class="form-control" id="moonContent" name="moonContent" style = "width = 300px;"></textarea>
                        </div>
                    </div>
                    <button type="button" class="btn btn-success" id="btnUpdate">제출</button>
                </form>
            </div>
        </div>
    </section>
    
<script type="text/javascript">
$(document).ready(function() {
    $("#btnUpdate").click(function() {
        var title = $("#moonTitle").val();
        var content = $("#moonContent").val();
        if (title === "") {
            alert("제목을 입력해주세요");
            $("#moonTitle").focus();
            return false;
        }
        if (content === "") {
            alert("내용을 입력하세요");
            $("#moonContent").focus();
            return false;
        }
        // 폼의 action을 "/board/moonInsert"로 설정
        document.forms["sentMessage"].action = "/board/moonInsert";
        document.forms["sentMessage"].submit();
    });
});
</script>
</body>
</html>