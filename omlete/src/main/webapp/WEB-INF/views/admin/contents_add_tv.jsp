<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html lang="en">

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                사이트 관리
            </div>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-film"></i>
                    <span>작품 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="<c:url value="/admin/contents_movie"/>">영화</a>
                        <a class="collapse-item" href="<c:url value="/admin/contents_tv"/>">TV</a>
                    </div>
                </div>
            </li>
            <!-- Nav Item - Utilities Collapse Menu -->
            <hr class="sidebar-divider">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin/member"/>">
                    <i class="fas fa-user"></i>
                    <span>회원 관리</span></a>
            </li>            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-bell"></i>
                    <span>공지사항</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">              
                        <a class="collapse-item" href="<c:url value= "/notice/notice"/>">공지사항</a>                    
                        <a class="collapse-item" href="<c:url value= "/notice/event"/>">이벤트</a>
                    </div>
                </div>
            </li>
			<hr class="sidebar-divider">
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value= "/moon/moon_view"/>">
                    <i class="fas fa-question-circle"></i>
                    <span>1:1 문의</span></a>
            </li>
			<hr class="sidebar-divider">
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="<c:url value= "/review/review_list"/>">
                    <i class="fas fa-comments"></i>
                    <span>리뷰 관리</span></a>
            </li>
			<hr class="sidebar-divider">
			<li class="nav-item">
                <a class="nav-link" href="<c:url value= "/omlete/"/>">
                    <i class="fas fa-home"></i>
                    <span>메인 페이지</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline"/>
        </ul>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">작품 추가</h1>
 
                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3"></div>
                        <div class="card-body" style= "height: 1000px;">
                        <div class="table-responsive">
                        <form action="<c:url value="/admin/contents_add_tv"/>" method="post" enctype="multipart/form-data">
							<table id="contentsAddTable" >
									<tr>
										<th>타입</th>
										<td>
											<p>TV</p>
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<td>
											<input type="text" name="contentsOname" id="contentsOname" value="${contents.contentsOname}" size="30" required>
										</td>
									</tr>
									<tr>
										<th>제목(번역)</th>
										<td>
											<input type="text" name="contentTname" id="contentTname" value="${contents.contentsTname}" size="30" required>
										</td>
									</tr>
									<tr>
										<th>예고편/트레일러</th>
										<td>
											<input type="url" name="trailer" id="trailer" value="${contents.contentsTrailer}" size="30">
										</td>
									</tr>
									<tr>
										<th>포스터</th>
										<td>
											<input type="file" name="poster" id="poster" value="${contents.contentsPoseter}">
										</td>
									</tr>
									<tr>
										<th>스틸컷1</th>
										<td>
											<input type="file" name="photo1" id="photo1" value="${contents.contentsPhoto1}">
										</td>
									</tr>
									<tr>
										<th>스틸컷2</th>
										<td>
											<input type="file" name="photo2" id="photo2" value="${contents.contentsPhoto2}">
										</td>
									</tr>
									<tr>
										<th>스틸컷3</th>
										<td>
											<input type="file" name="photo3" id="photo3" value="${contents.contentsPhoto3}">
										</td>
									</tr>
									<tr>
										<th>출연진</th>
										<td>
											<input type="text" name="contentsCast" id="contentsCast" value="${actors.actorName}" size="30" required>
										</td>
									</tr>
									<tr>
										<th>작가</th>
										<td>
											<input type="text" name="contentsStaff" id="contentsStaff" value="${contents.contentsStaff}" size="30" required>
										</td>
									</tr>							
									<tr>
										<th>내용</th>
										<td>
											<textarea rows="5" cols="80" maxlength="300">${contents.contentsOverview}</textarea>
										</td>
									</tr>
									<tr>
										<th>연령 등급</th>
										<td>
											<select name="contentsRating" id="contentsRating" onchange="ratingChange(this)" required>
												<option value="" selected>--선택--</option>												
												<option value="all" ${contents.contentsRating == 'all' ? 'selected' : ''}>전체 관람가</option>
												<option value="seven" ${contents.contentsRating == 'seven' ? 'selected' : ''}>7세 시청가</option>
												<option value="twelve" ${contents.contentsRating == 'twelve' ? 'selected' : ''}>12세 이상 시청가</option>
												<option value="fifthteen" ${contents.contentsRating == 'fifthteen' ? 'selected' : ''}>15세 이상 시청가</option>
												<option value="adult" ${contents.contentsRating == 'adult' ? 'selected' : ''}>19세 이상 시청가</option>																								
											</select>
										</td>
									</tr>
									<tr>
										<th>장르</th>
										<td>
						 				   <select name="contentsGenre" id="contentsGenre" onchange="genreChanege(this)" required>
												<option value="" selected>--선택--</option>
												<option value="drama" ${contents.contentsGenre == 'drama' ? 'selected' : ''}>드라마</option>
												<option value="documentary" ${contents.contentsGenre == 'documentary' ? 'selected' : ''}>다큐멘터리</option>
												<option value="entertainment" ${contents.contentsGenre == 'entertainment' ? 'selected' : ''}>예능</option>									
											</select>										
										</td>
									</tr>
									<tr>
										<th>방송사</th>
										<td>
											<select name="broadcast" id="broadcast" onchange="brodcastChange(this)" required>
												<option value="" selected>--선택--</option>
												<option value="sbs" ${contents.contentsNetwork == 'sbs' ? 'selected' : ''}>SBS</option>
												<option value="kbs" ${contents.contentsNetwork == 'kbs' ? 'selected' : ''}>KBS</option>
												<option value="mbc" ${contents.contentsNetwork == 'mbc' ? 'selected' : ''}>MBC</option>
												<option value="jtbc" ${contents.contentsNetwork == 'jtbc' ? 'selected' : ''}>JTBC</option>
												<option value="netflix" ${contents.contentsNetwork == 'netflix' ? 'selected' : ''}>Netflix</option>
												<option value="tving" ${contents.contentsNetwork == 'tving' ? 'selected' : ''}>TVING</option>
												<option value="coupang" ${contents.contentsNetwork == 'coupang' ? 'selected' : ''}>쿠팡플레이</option>
												<option value="disney" ${contents.contentsNetwork == 'disney' ? 'selected' : ''}>Disney+</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<th>방송사 로고</th>
										<td>
											<input type="file" name="brodcastLogo" id="poster" value="${contents.contentsNetworkLogo}" required>
										</td>
									</tr>
									
									<tr>									
										<th>국가</th>
										<td>
											<input type="text" name="country" id="country" value="${contents.contentsCountries}" size="15" required>
										</td>
									</tr>
									<tr>
										<th>PD</th>
										<td>
											<input type="text" name="contentsDirector" id="contentsDirector" value="${contents.contentsDirector}" size="15" required>
										</td>
									</tr>
								
									<tr>
		
									<tr>
										<th>에피소드</th>
										<td>
											<input type="text" name="episode" id="episode" value="${contents.contentsEpiosdes}" size="15">
										</td>
									</tr>
									<tr>
										<th>시즌</th>
										<td>
											<input type="text" name="season" id="season" value="${contents.contentsSeasons}" size="15">
										</td>
									</tr>
									<tr>
										<th>총 시간</th>
										<td>
											<input type="text" name="runTime" id="runTime" value="${contents.contentsRuntime}" size="15" required>
										</td>
									</tr>
									<tr>
										<th>태그</th>
										<td>
											<input type="text" name="tagline" id="tagline" value="${contents.contentsTagline}" size="15" required>
										</td>
									</tr>									
								</table>
								</form>
								<button type="submit">저장</button>
                            </div>
                        </div>
                    </div>
               </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">logout</a>
                </div>
            </div>
        </div>
    </div>
	

</body>

</html>