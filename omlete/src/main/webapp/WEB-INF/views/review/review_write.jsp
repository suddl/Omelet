<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.spoiler {
	margin-bottom: 1rem;
}

.main-review-title {
	margin-bottom: 3rem;
}

.col-lg-4 col-md-4 {
	padding-left: 0px;
}
</style>
<body>
	  <section class="py-5" style="padding-top: 8rem !important; padding-bottom: 8rem !important;">
         <div class="container">
            <div class="rowNo">
               <div class="col-lg-12 col-md-12 section-title text-left mb-4">
                  <h2 class="main-review-title">리뷰 작성</h2>
               </div>
               <form class="col-lg-12 col-md-12" name="sentMessage" action='<c:url value="/review/write"/>'>
                  <div class="rowNo">
                     <div style="padding-left: 0px;" class="control-group form-group col-lg-4 col-md-4">
                     <button type="button" class="spoiler" id="spoiler">스포일러 체크</button>
                        <div class="controls">
                           <div type="text" class="form-control">
                           		<c:out value="${contentsTname }" />
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="control-group form-group">
                    <header class="review-content">
                     <div class="controls">
                     <!-- <label>리뷰 <span class="text-danger">*</span></label> -->
                        <textarea placeholder="이 작품에 대한 생각을 자유롭게 표현해주세요." rows="10" cols="100" class="form-control" id="form-control"></textarea>
                     </div>
                    </header>
                  </div>
                  <button type="reset" class="btn btn-reset">다시쓰기</button>
                  <button type="submit" class="btn btn-success">저장</button>
               </form>
            </div>
         </div>
      </section>
<div id="message" style="color: red;"></div>
<script type="text/javascript">
$("#noticeForm").submit(function() {
	if($("#form-control").val()=="") {
		$("#message").text("내용을 입력해 주세요.");
		$("#form-control").focus();
		return false;
	}
});

$("#btn btn-reset").click(function() {
	$("#form-control").focus();
	$("#message").text("");
});
</script>

</body>
</html>