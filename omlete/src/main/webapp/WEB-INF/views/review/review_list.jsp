<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 리뷰 리스트 페이지에서는 명대사, 짧은글, 긴글 카테고리별로 볼 수 있게 하고, 한 페이지에 10개씩 볼 수 있게 페이징 처리 할 것입니다 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Gurdeep singh osahan">
<meta name="author" content="Gurdeep singh osahan">
<title>Maer - LMS & Freelance Services Marketplace for Businesses HTML Template</title>
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
               <div class="sorting-div d-flex align-items-center justify-content-between">
                  <p style="font-size: 24px; font-weight: 700" class="mb-2">지금 뜨는 코멘트</p> 
                  <div class="sorting d-flex align-items-center">
                  </div>
               </div>
               <!-- 최신 리뷰, 인기 리뷰 기능 넣기 - href -->
               <div>
                 <ul style="padding: 0px 105px 16px; text-align: left;"> 
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="ingichoose" type="button" href="">인기</a>
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="">최신</a>
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="">명대사</a>
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="">짧은글</a>
                   </li>
                   <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                     <a id="choishinchoose" type="button" href="">긴글</a>
                   </li>
                 </ul>
               </div>
            </div>
            <div class="container">
               <div class="col-md-6">
                  <div class="box shadow-sm rounded bg-white mb-4">
                     <div class="p-4 d-flex align-items-center">
                     <a class="writer-image">
                     	<img style="height: 40px; width: 40px;" alt="writer-image" src="images/logo.svg">
                     	<div class="writer-full-part">
                     		<div class="writer-name-part">
                     			<div class="writer-name">
                     				<p class="name">이름</p>
                     			</div>
                     			<div class="star">
                     			<img style="height: 40px; width: 40px;" alt="star-image" src="images/logo.svg">
                     			<p>별점</p>
                     			</div>
                     		</div>
                     		<p>작성 시간</p>
                     	</div>
                     </a>
                        <i class="mdi mdi-message-text-outline display-4"></i>
                        <div class="ml-4">
                           <h5 class="font-weight-normal text-dark mb-3 mt-0">작품 제목</h5>
                           <p class="mb-0 text-muted">여기 부분이 리뷰의 내용입니다.
                              ...asdfasdfkjasdkjfasdfiwefmeklflksdfiwsefk efijsdfkj sfsdlkf jsdfslkd fsdf sdflisd flksd jfsdflskdj fsdflksjd fsdlkfj 
                              sdlkfsdfkl;j sdfkl jsdfkl; jsdlkfj sdf jsdfkl jsdfkl jd fasd fasdf asd fasd fasd fafd sd fasd fasad fs asdf sdaf asdf
                              asd fasfd fasd  asdfafd sasd fad fsad fsad fsafd sad fs fadsfdasafsd fasd fasd asfd asd ffad s
                           </p>
                        </div>
                     </div>
                     <div class="overflow-hidden border-top d-flex align-items-center p-4">
                        <a class="font-weight-bold d-block" href="#">
                        	<img style="height: 40px; width: 40px;" alt="like" src="images/logo.svg">
                        	<img style="height: 40px; width: 40px;" alt="hate" src="images/logo.svg">
                        	<img style="height: 40px; width: 40px;" alt="jjim" src="images/logo.svg">
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
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
      </div>
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