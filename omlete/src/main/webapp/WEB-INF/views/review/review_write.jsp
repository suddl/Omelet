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
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Gurdeep singh osahan">
      <meta name="author" content="Gurdeep singh osahan">
      <title>Omelet - LMS & Freelance Services Marketplace for Businesses HTML Template</title>
      <!-- Favicon Icon -->
      <link rel="icon" type="image/png" href="images/fav.svg">
      <!-- Bootstrap core CSS -->
      <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- Font Awesome-->
      <link href="vendor/fontawesome/css/font-awesome.min.css" rel="stylesheet">
      <!-- Material Design Icons -->
      <link href="vendor/icons/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">
      <!-- Slick -->
      <link href="vendor/slick-master/slick/slick.css" rel="stylesheet" type="text/css">
      <!-- Lightgallery -->
      <link href="vendor/lightgallery-master/dist/css/lightgallery.min.css" rel="stylesheet">
      <!-- Select2 CSS -->
      <link href="vendor/select2/css/select2-bootstrap.css" />
      <link href="vendor/select2/css/select2.min.css" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="css/style.css" rel="stylesheet">
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