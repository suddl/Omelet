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
        
            <!-- Heading -->
            <div class="sidebar-heading">
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
                    <h1 class="h3 mb-2 text-gray-800">작품 관리</h1>
 
                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        <div class="contentsBtn">
							<a class="addContents" href="<c:url value= "/admin/contents_add"/>"><button class="addContents">추가</button></a> 
                        	<button class="deleteContents" onclick="contentsDelete(${contents.contentsNo };)">삭제</button>
                        </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
							<table id="memberTable" border="1">
								<thead>
									<tr style="width: 600px;">
										<th>
                    						<input type="checkbox" id="selectAll">
										</th>
										<th>번호</th>
										<th>타입</th>
										<th>제목</th>
										<th>출연진</th>
										<th>PD</th>
										<th>연령 등급</th>
										<th>장르</th>
										<th>방송사</th>
										<th>국가</th>
										<th>총 시간</th>
										<th>에피소드</th>
										<th>시즌</th>										
										<th>평균별점</th>
									</tr>
								</thead>
								<tbody>								  
								    <tr>
								        <td><input type="checkbox"></td> <!-- 각 행의 첫 번째 셀에 체크박스 추가 -->
								        <td>${contents.contentsNo}</td>
						                <td>${contents.contentsType}</td>
						                <td>${contents.contentsOname}</td>
						                <td>${actors.actorName}</td>
						                <td>${contents.contentsDirector}</td>
								        <td>${contents.contentsRating}</td>
							            <td>${contents.contentsGenre}</td>
						                <td>${contents.contentsNetwork}</td>
						                <td>${contents.contentsCountries}</td>
						                <td>${contents.contentsRunttime}</td>
						                <td>${contents.contentsEpisodes}</td>
						                <td>${contents.contentsSeasons}</td>
						                <td>${contents.contentsAvgstar}</td>
						            </tr>
			     			    </tbody>
							</table>
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
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
	<script type="text/javascript">
	function contentsDelete(contentsNo) {
		if(confirm("자료를 정말 삭제하시겠습니까?")) {
			location.href="<c:url value="contents_delete"/>?contetsNo="+contentsNo;
		}
	}
	
    function getCheckedContentsNo() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        var checkedContentsNoArray = [];

        checkboxes.forEach(function(checkbox) {
            if (checkbox.checked) {
                var contentsNo = checkbox.parentNode.dataset.contentsno;
                checkedContentsNoArray.push(contentsNo);
            }
        });
        return checkedContentsNoArray;
    }
    
    document.getElementById("selectAll").addEventListener("change", function() {
        var checkboxes = document.querySelectorAll("#memberTable tbody input[type='checkbox']");
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = this.checked;
        });
    });
	</script>
</body>

</html>