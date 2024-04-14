<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
							<a class="addContents" href="<c:url value= "/admin/contents_add_movie"/>"><button class="addContents">추가</button></a>
							<form id="modifyForm" action="<c:url value='/omlete/admin/contents_modify_movie'/>" method="get">
							    <input type="hidden" name="contentsNo" id="hiddenContentsNo" value="">
							    <button type="submit" class="modifyContents">수정</button>
							</form>
							<form id="deleteForm" action="<c:url value='/admin/contents_remove_movie'/>" method="post">
							    <input type="hidden" name="contentsNo" id="deleteContentsNo" value=""> <!-- 수정된 부분 -->
							    <button type="submit" class="removeContents">삭제</button>
							</form>
                        </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
							<table id="memberTable" border="1">
								<thead>
									<tr style="width: 600px;">
										<th>
										</th>
										<th style="width: 150px;">번호</th>
										<th style="width: 150px;">타입</th>
										<th style="width: 150px;">제목</th>
										<th style="width: 150px;">감독</th>
										<th style="width: 150px;">연령 등급</th>
										<th style="width: 150px;">장르</th>
										<th style="width: 150px;">국가</th>
										<th style="width: 150px;">개봉일</th>
										<th style="width: 150px;">종영일</th>
										<th style="width: 150px;">평균별점</th>
										<th style="width: 150px;">상영시간</th>
									</tr>
								</thead>
								<c:forEach var="contents" items="${movieList}">
								<tbody>								  
						            <tr>
						                <td><input type="checkbox" name="contentsNo" value="${contents.contentsNo}" data-contentsno="${contents.contentsNo}"></td> <!-- 각 행의 첫 번째 셀에 체크박스 추가 -->
						                <td>${contents.contentsNo}</td>
						                <td>${contents.contentsType}</td>
						                <td>${contents.contentsOname}</td>
						                <td>${contents.contentsDirector}</td>
						                <td>${contents.contentsRating}</td>
						                <td>${contents.contentsGenre}</td>								                
						                <td>${contents.contentsCountries}</td>
							            <td>${fn:substring(contents.contentsStartdate, 0, 10)}</td>
							            <td>${fn:substring(contents.contentsEnddate, 0, 10)}</td>							            
						                <td>${contents.contentsAvgstar}</td>
						                <td>${contents.contentsRuntime}</td>								             
						            </tr>
							    </tbody>
							    </c:forEach>					
							</table>
                            </div>
        		  <div class="footer-pagination text-center">
	            	  	<nav aria-label="Page navigation example">
	               			<ul class="pagination">
				            <!-- 이전 -->
	            			<c:choose>
	               				<c:when test="${pager.startPage > pager.blockSize }">
	                  				<li class="page-item">
	                     			<a class="page-link" aria-label="Previous" href="<c:url value="/board/noticeList"/>?pageNum=${pager.prevPage}">
	                        		<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
	                     			</a>	
	                  				</li>
	                  			</c:when>
	                  			<c:otherwise>
	                  				<li class="page-item">
	                     				<a class="page-link" aria-label="Previous" ?pageNum=${pager.prevPage}">
	                        			<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
	                     				</a>	
	                  				</li>
								</c:otherwise>
							</c:choose>
				            <!-- 페이지 번호 목록 -->
	            			<c:forEach var="i" begin="${pager.startRow }" end="${pager.endRow }" step="1">
								<c:choose>
									<c:when test="${pager.pageNum != i }">
										<li class="page-item">
										<a class="page-link" href="<c:url value="/board/noticeList"/>?pageNum=${i}">${i}</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item active">
										<a class="page-link" ?pageNum=${i}">${i}</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<!-- 다음 -->
	                  		<c:choose>
	                  			<c:when test="${pager.startRow != pager.endRow }">
	                  				<li class="page-item">
	                     			<a class="page-link" aria-label="Next" href="<c:url value="/board/noticeList"/>?pageNum=${pager.nextPage}">
	                        		<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
	                     			</a>
	                  				</li>
	                  			</c:when>
	                  			<c:otherwise>
	                  				<li class="page-item">
	                     			<a class="page-link" aria-label="Next" ?pageNum=${pager.nextPage}">
	                        		<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
	                     			</a>
	                  				</li>
								</c:otherwise>
							</c:choose>
				        </ul>
	    			</nav>
				</div>
                        </div>
                    </div>

                </div>

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
	// 삭제 폼 제출하기
	document.getElementById("deleteForm").addEventListener("submit", function(event) {
	    event.preventDefault(); // 기본 이벤트 방지
	    var checkedContentsNoArray = getCheckedContentsNo(); // 체크된 항목의 contentsNo 배열 가져오기
	
	    if (checkedContentsNoArray.length === 0) {
	        alert('삭제할 작품을 선택하세요.');
	    } else {
	        if (confirm("선택한 작품을 정말 삭제하시겠습니까?")) {
	            // 선택된 작품의 contentsNo 값을 hidden input에 설정
	            document.getElementById('deleteContentsNo').value = checkedContentsNoArray[0]; // 수정된 부분
	            // 폼 제출
	            this.submit();
	        }
	    }
	});

    // 체크된 항목의 contentsNo 가져오기
	function getCheckedContentsNo() {
	    var checkboxes = document.querySelectorAll('input[type="checkbox"][name="contentsNo"]');
	    var checkedContentsNoArray = [];
	
	    checkboxes.forEach(function(checkbox) {
	        if (checkbox.checked) {
	            var contentsNo = checkbox.value; // value 속성에서 contentsNo 값을 가져옵니다.
	            checkedContentsNoArray.push(contentsNo);
	            console.log("Checked contentsNo: " + contentsNo); // 체크된 contentsNo 확인하기
	        }
	    });
	    return checkedContentsNoArray;
	}
    
    document.getElementById("modifyForm").addEventListener("submit", function(event) {
        var checkedBoxes = document.querySelectorAll('input[type="checkbox"][name="contentsNo"]:checked');
        if (checkedBoxes.length !== 1) {
            alert('수정할 작품을 하나만 선택하세요.');
            event.preventDefault(); // 폼 제출 중단
        }
    });
    
    document.addEventListener('DOMContentLoaded', function() {
        var modifyButton = document.querySelector('.modifyContents');
        modifyButton.addEventListener('click', function(event) {
            event.preventDefault(); // 기본 이벤트 방지
            var checkedBoxes = document.querySelectorAll('input[type="checkbox"][name="contentsNo"]:checked');
            if (checkedBoxes.length === 1) { // 수정은 한 번에 하나의 항목만 가능
                var contentsNo = checkedBoxes[0].value; // 체크된 항목의 contentsNo 가져오기
                console.log("Selected contentsNo: " + contentsNo); // 선택된 contentsNo 로그 출력
                var baseUrl = window.location.origin; // 현재 페이지의 기본 URL 가져오기
                window.location.href = baseUrl + "/omlete/admin/contents_modify_movie?contentsNo=" + contentsNo; // 올바른 경로로 이동
            } else {
                alert('하나의 항목만 선택하세요.');
            }
        });
    });
    
    document.querySelector('.modifyContents').addEventListener('click', function(event) {
        event.preventDefault(); // 기본 이벤트 방지
        var checkedBoxes = document.querySelectorAll('input[name="contentsNo"]:checked');
        if (checkedBoxes.length === 1) { // 수정은 한 번에 하나의 항목만 가능
            document.getElementById('hiddenContentsNo').value = checkedBoxes[0].value; // hidden input에 contentsNo 설정
            document.getElementById('modifyForm').submit(); // 폼 제출
        } else {
            alert('하나의 항목만 선택하세요.');
        }
    });
</script>
</body>

</html>