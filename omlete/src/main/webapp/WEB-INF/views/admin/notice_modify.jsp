<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>공지사항 작성</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-group {
            margin-bottom: 20px; /* 필드 간 간격 조절 */
        }
        #notice_content {
            width: 100%; /* 너비를 100%로 설정 */
            height: 150px; /* 높이 설정 */
        }
    </style>
</head>
<body>
    <section class="section-padding bg-dark py-5 inner-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="mt-0 mb-3 text-white">공지사항</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5 bg-white">
        <div class="container">
            <form action="${pageContext.request.contextPath}/admin/notice_write" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>공지사항</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 form-group">
                        <label for="notice_title">제목:</label>
                        <input type="text" id="notice_title" name="notice_title" value="${notice.noticeTitle}" required>
                    </div>
                    <div class="col-lg-12 form-group">
                        <label for="notice_status">타입:</label>
                        <select id="notice_status" name="notice_status">
                            <option value="공지" ${empty notice ? '' : notice.noticeStatus == 'notice' ? 'selected' : ''}>공지</option>
                            <option value="이벤트" ${empty notice ? '' : notice.noticeStatus == 'event' ? 'selected' : ''}>이벤트</option>
                        </select>
                    </div>
                    <div class="col-lg-12 form-group">
                        <label for="notice_date">공지일:</label>
                        <input type="date" id="notice_date" name="notice_date" value="${notice.noticeDate}" required>
                    </div>
                    <div class="col-lg-12 form-group">
                        <label for="notice_term">기간:</label>
                        <input type="text" id="notice_term" name="notice_term" value="${notice.noticeTerm}">
                    </div>
                    <div class="col-lg-12 form-group">
                        <label for="notice_content">내용:</label>
                        <textarea id="notice_content" name="notice_content" required>${notice.noticeContent}</textarea>
                    </div>
                    <div class="col-lg-12 form-group">
                        <label for="notice_image">사진:</label>
                        <input type="file" id="notice_image" name="notice_image">
                    </div>
                    <div class="col-lg-12 form-group">
                        <button type="submit">수정</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</body>
    <script>
    function redirectToAdminList() {
        var newPageUrl = "<c:url value='/admin/noticeList'/>";
        window.location.href = newPageUrl;
    }
    </script>
</html>