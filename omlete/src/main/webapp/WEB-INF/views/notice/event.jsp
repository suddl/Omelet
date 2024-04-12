<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <body>

      <!-- Inner Header -->
      <section class="py-5 bg-dark inner-header">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">${data.noticeTitle}</h1>
                  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><span class="text-success">${data.noticeDate}까지</span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Inner Header -->
      <!-- About -->
      <section class="py-5 bg-white">
         <div class="container">
            <div class="row align-items-center">
               <div class="pl-4 col-lg-5 col-md-5 pr-4">
                  <!-- <img class="rounded img-fluid" src="images/list/graveyard.jpg" alt="Card image cap"> -->
                  <img class="img-fluid" src="<c:url value="/"/>${data.noticeImage}" style="width: 500px">
               </div>
               <div class="col-lg-6 col-md-6 pl-5 pr-5">
                  <h2 class="mb-5">${data.noticeContent}
                  </h2>
               </div>
            </div>
         </div>
      </section>
      
      
       <div>
         <div class="get-started">
            <div class="content">
               <h2>응모시 자동으로 50포인트가 차감</h2>
               <p>당첨 시, 동반1인까지 관람가능합니다.</p>
               <a href="#" class="c-btn c-fill-color-btn">응모하기</a>
            </div>
         </div>
      </div>
      
      

      
      
     
   </body>
</html>