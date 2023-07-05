<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@include file="../user/user_top.jsp" %>
<!-- b_mypage.jsp -->
<head>
</head>
<body>
<div align="center">
<div class="card w-50 mb-3" >
  <div class="row g-0">
    <div class="col-md-4">
      <img src="resources/img/a (9).jpg" class="img-fluid rounded-start" >
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">${member.mem_nickname}</h5>
        <p class="card-text">${dto.bp_info}</p>
        <p class="card-text"><small class="text-body-secondary">${dto.bp_location }</small></p>
       
			</div>
			<div aling="center" id="map" style="width:400px;height:200px;"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=265d925f04bd6bf7c74e0ca951641be9"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		var marker = new kakao.maps.Marker({
		    map: map, 
		    position: new kakao.maps.LatLng(33.450701, 126.570667)
		});
		
		
	</script>
		 <p class="card-text"><small class="text-body-secondary">
        		
        		<c:if test="${dto.bp_starrating eq 1 }">
				<img src="resources/img/star.png" width="20" height="20">
				</c:if>
				<c:if test="${dto.bp_starrating eq 2 }">
				<c:forEach begin="1" end="2">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
				<c:if test="${dto.bp_starrating eq 3 }">
				<c:forEach begin="1" end="3">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
				<c:if test="${dto.bp_starrating eq 4 }">
				<c:forEach begin="1" end="4">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
				<c:if test="${dto.bp_starrating eq 5 }">
				<c:forEach begin="1" end="5">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if></small></p>
			<div>
      </div>
  	</div>
     <!-- 카드 하단 버튼 라인  -->
      <div class="card-footer text-body-secondary">
  	 		<a href="#" class="btn btn-primary">프로필 수정</a>
    </div>
  </div>
</div>
</div>
</body>
<%@include file="../user/user_bottom.jsp" %>