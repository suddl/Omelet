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
                    <h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
 
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">                     
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
							<table id="memberTable" border="1">
								<thead>
									<tr style="width: 600px;">
										<th>
                    						<input type="checkbox" id="selectAll">
										</th>									
										<th>회원 번호</th>
										<th>아이디</th>
										<th>이름</th>
										<th>전화번호</th>									
										<th>이메일</th>
										<th>등급</th>
										<th>상태</th>
										<th>포인트</th>
										<th>신고 수치</th>
										<th>닉네임</th>
									</tr>
								</thead>							
								<c:forEach var="member" items="${memberList}">
								<tbody>								  
						             <tr>
						             	<td><input type="checkbox"></td> <!-- 각 행의 첫 번째 셀에 체크박스 추가 -->
								        <td>${member.memberNo}</td>
								        <td>${member.memberId}</td>
								        <td>${member.memberName}</td>					 
							            <td>${member.memberPhone}</td>
						                <td>${member.memberEmail}</td>
							            <td>${member.memberLevel}</td>
                                        <td>
                                        	<select name="memberStatus">
                                            	<option value="0" ${member.memberStatus == 0 ? 'selected' : ''}>0</option>
                                                <option value="1" ${member.memberStatus == 1 ? 'selected' : ''}>1</option>
                                                <option value="9" ${member.memberStatus == 9 ? 'selected' : ''}>9</option>
                                            </select>
                                        </td>				
					   	                <td>${member.memberPoint}</td>				
							            <td>${member.memberReport}</td>				
							            <td>${member.memberNickname}</td>				
								      </tr>
								 </tbody>
								 </c:forEach>
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
    <script>
    $(document).ready(function(){
        $('.updateStatusBtn').click(function(){
            var memberId = $(this).data('member-id');
            var newStatus = $(this).closest('tr').find('.memberStatus').val();
            
            $.ajax({
                type: "POST",
                url: "/admin/member",
                data: { memberId: memberId, newStatus: memberStatus },
                success: function(response){
                    // 상태 업데이트 성공 시 해당 행의 상태 업데이트
                    $(this).closest('tr').find('.memberStatus').val(newStatus);
                    alert('회원 상태가 업데이트되었습니다.');
                },
                error: function(xhr, status, error) {
                    alert('오류가 발생했습니다. 다시 시도해주세요.');
                }
            });
        });
    });
    </script>

</body>
</html>