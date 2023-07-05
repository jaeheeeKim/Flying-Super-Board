<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
	다음주 와서 할일
	1. 좋아요 기능 구현
	2. 좋아요 기능 구현 후 게임 목록에서 좋아요 순으로 정렬
	3. 게임 상세
 -->
<!-- game_view.jsp -->
<%@ include file="../user/user_top.jsp" %>
<script type="text/javascript">
	function checkDel(review_num, game_num) {
		var isDel = window.confirm("정말로 삭제하시겠습니까?")
		if (isDel) {
			document.f2.review_num.value = review_num
			document.f2.game_num.value = game_num
			document.f2.submit()
		}
	}
	
	function checkReport(review_num, game_num) {
		window.open("report.do?review_num="+review_num+"&game_num="+game_num, "", "width=550, height=470, left=680, top=270")
	}	
	
	function reviewCheck(){
		if (f.review_starrating.value=="") {
			alert("별점을 입력해 주세요!!")
			f.review_starrating.focus()
			return
		}
		if (f.review_content.value=="") {
			alert("내용을 입력해 주세요!!")
			f.review_content.focus()
			return
		}
		document.f.submit()
	}
	
</script>
 <div align="center">
 <br>
 	<div align="center" class="text-bg-dark p-3">[${getGame.game_name}] 보드게임 정보</div>
 <br>
 
	<div class="card mb-3" style="max-width: 1300px;">
  		<div class="row g-0">
    		<div class="col-md-4" align="center">
      			<img src="resources/img/${getGame.game_img}" class="img-fluid rounded-start w-100 h-100" alt="보드게임">
    		</div>
    	<div class="col-md-8">
     		 <div class="card-body">
        <div align="left">
        <p class="card-text">
        <table width="100%" class="table table-borderless">
        	<tr align="center">
        		<td><font size="4"><b>게임 이름</b></font>
			<tr>
			<tr align="center">
				<td><font size="4">${getGame.game_name}(♡ 좋아요버튼넣기)</font></td>
        	</tr>
       	</table>
       	<!-- <br> -->
        <table width="100%" class="table table-striped">
        	<tr align="center">
        		<td width="25%"><font size="4"><b>인원</b></font></td>
        		<td width="25%"><font size="4"><b>플레이 시간</b></font></td>
        		<td width="25%"><font size="4"><b>난이도</b></font></td>
        		<td width="25%"><font size="4"><b>별점</b></font></td>
        	</tr>
        	<tr align="center">
        		<td>
        			<c:if test="${getGame.game_player eq 1}">
        				1인
        			</c:if>
        			<c:if test="${getGame.game_player eq 2}">
        				2~4인
        			</c:if>
        			<c:if test="${getGame.game_player eq 3}">
        				5~6인
        			</c:if>
        			<c:if test="${getGame.game_player eq 4}">
        				7인 이상
        			</c:if>
        		</td>
        		<td>
        			${getGame.game_playTime}분
        		</td>
        		<td>
        			<c:if test="${getGame.game_level eq 1 }">
       					<c:forEach begin="1" end="${getGame.game_level}">
    						<img src="resources/img/fire.png" width="20" height="20">
    					</c:forEach>
       				</c:if>
       				<c:if test="${getGame.game_level eq 2 }">
       					<c:forEach begin="1" end="${getGame.game_level}">
    						<img src="resources/img/fire.png" width="20" height="20">
    					</c:forEach>
       				</c:if>
       				<c:if test="${getGame.game_level eq 3 }">
       					<c:forEach begin="1" end="${getGame.game_level}">
    						<img src="resources/img/fire.png" width="15" height="20">
    					</c:forEach>
       				</c:if>
       				<c:if test="${getGame.game_level eq 4 }">
       					<c:forEach begin="1" end="${getGame.game_level}">
    						<img src="resources/img/fire.png" width="20" height="20">
    					</c:forEach>
       				</c:if>
       				<c:if test="${getGame.game_level eq 5 }">
       					<c:forEach begin="1" end="${getGame.game_level}">
    						<img src="resources/img/fire.png" width="20" height="20">
    					</c:forEach>
       				</c:if>  
        		</td>
        		<td>
        			<c:if test="${reviewAvg eq null }">
       					등록된 별점이 없습니다.
       				</c:if>
       				<c:if test="${reviewAvg ne null }">
       					<c:if test="${reviewAvg eq 1 }">
       						<c:forEach begin="1" end="${reviewAvg }">
       							<img src="resources/img/star.png" width="20" height="20">
       						</c:forEach>
       						&nbsp;${reviewAvg } / 5 (${count }건)
       					</c:if>
       				 	<c:if test="${reviewAvg eq 2 }">
       						<c:forEach begin="1" end="${reviewAvg }">
       							<img src="resources/img/star.png" width="20" height="20">
       						</c:forEach>
       						&nbsp;${reviewAvg } / 5 (${count }건)
       					</c:if>
       					<c:if test="${reviewAvg eq 3 }">
       						<c:forEach begin="1" end="${reviewAvg }">
       							<img src="resources/img/star.png" width="20" height="20">
       						</c:forEach>
       						&nbsp;${reviewAvg } / 5 (${count }건)
       					</c:if>
       					<c:if test="${reviewAvg eq 4 }">
       						<c:forEach begin="1" end="${reviewAvg }">
       							<img src="resources/img/star.png" width="20" height="20">
       						</c:forEach>
       						&nbsp;${reviewAvg } / 5 (${count }건)
       					</c:if>
       					<c:if test="${reviewAvg eq 5 }">
       						<c:forEach begin="1" end="${reviewAvg }">
       							<img src="resources/img/star.png" width="20" height="20">
       						</c:forEach>
       						&nbsp;${reviewAvg } / 5 (${count }건)
       					</c:if>
       				</c:if>
        		</td>
        	</tr>
        	<tr align="center">
        		<td colspan="4"><b><font size="4">게임설명</font></b></td>
        	</tr>
        	<tr align="center" height="50%">
        		<td colspan="4">${getGame.game_content}</td>
        	</tr>
        </table>
        <br>
        <table width="100%" class="table table-borderless">
        	<tr align="center">
        		<td><font size="4"><b>좋아요</b></font>
			<tr>
			<tr align="center">
				<td><font size="4">${getGame.game_likeCount}</font></td>
        	</tr>
        	<tr align="center">
        		<td><font size="4"><a href=""><button type="button" class="btn btn-link">쇼핑몰로 이동하기</button></a></font></td>
        	</tr>
       	</table>
        	</p>
        	</div>
      		</div>
    	</div>
  		</div>
 	</div>
	<br>
	<br>
	<div class="text-bg-dark p-3">게임태그</div>
	<br>
	<br>
	<c:forEach var="tdto" items="${listTheme }">
 		<c:forEach var="tag" items="${gameTag }">
		<c:if test="${tdto.theme_num eq tag.theme_num}">
			<c:if test="${tdto.theme_num eq 1 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-danger">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 2 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-warning">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 3 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-success">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 4 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-info">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 5 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-primary">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 6 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-secondary">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 7 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-dark">${tdto.theme_name }</button></a>
			</c:if>
			<c:if test="${tdto.theme_num eq 8 }">
				<a href="game_tag.do"><button type="button" class="btn btn-outline-secondary">${tdto.theme_name }</button></a>
			</c:if>
		</c:if>
		</c:forEach>
 	</c:forEach>
	<br>
	<br>
	<div class="text-bg-dark p-3">한줄평</div>
<form name="f" action="review_input.do" method="post">
	<input type="hidden" name="game_num" value="${getGame.game_num }">
	<table class="table table-hover">
	<thead class="table-light">
		<tr align="center">
			<th width="10%"><a href="#">닉네임</a></th>
			<td width="40%">
			<div class="row row-cols-5">
				<div class="form-check">
			<div class="col">
  					<input class="form-check-input" type="radio" name="review_starrating" value="1" id="flexRadioDefault1">
  					<label class="form-check-label" for="flexRadioDefault1">
  					<c:forEach begin="1" end="1">
    					<img src="resources/img/star.png" width="15" height="15">
    				</c:forEach>
  					</label>
<!--   					<input type="hidden" name="review_starrating" value="1"> -->
				</div>
			</div>
				<div class="form-check">
  					<input class="form-check-input" type="radio" name="review_starrating" value="2" id="flexRadioDefault2">
  					<label class="form-check-label" for="flexRadioDefault2">
    					<c:forEach begin="1" end="2">
							<img src="resources/img/star.png" width="15" height="15">
						</c:forEach>
  					</label>
				</div>
				<div class="form-check">
  					<input class="form-check-input" type="radio" name="review_starrating" value="3" id="flexRadioDefault3">
  					<label class="form-check-label" for="flexRadioDefault3">
    					<c:forEach begin="1" end="3">
							<img src="resources/img/star.png" width="15" height="15">
						</c:forEach>
  					</label>
				</div>
				<div class="form-check">
  					<input class="form-check-input" type="radio" name="review_starrating" value="4" id="flexRadioDefault4">
  					<label class="form-check-label" for="flexRadioDefault4">
    					<c:forEach begin="1" end="4">
							<img src="resources/img/star.png" width="15" height="15">
						</c:forEach>
  					</label>
				</div>
				<div class="form-check">
  					<input class="form-check-input" type="radio" name="review_starrating" value="5" id="flexRadioDefault5">
  					<label class="form-check-label" for="flexRadioDefault5">
    					<c:forEach begin="1" end="5">
							<img src="resources/img/star.png" width="15" height="15">
						</c:forEach>
  					</label>
				</div>
			</div>
			</td>
			<td width="50%" colspan="2">
				<input type="text" size="100" name="review_content">
				<a href="javascript:reviewCheck()"><input type="button" value="등록"></a>
			</td>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="dto" items="${listReview}">
		<tr align="center">
 			<th width="5%"><a href="#">${dto.mem_nickname}</a></th>
			<td width="35%">
<%-- 			<c:if test="${dto.review_report ne 0 }">
			</c:if> --%>
			<c:if test="${dto.review_report >= 0 }">
				<c:if test="${dto.review_starrating eq 1 }">
					<img src="resources/img/star.png" width="20" height="20">
				</c:if>
				<c:if test="${dto.review_starrating eq 2 }">
				<c:forEach begin="1" end="2">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
				<c:if test="${dto.review_starrating eq 3 }">
				<c:forEach begin="1" end="3">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
				<c:if test="${dto.review_starrating eq 4 }">
				<c:forEach begin="1" end="4">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
				<c:if test="${dto.review_starrating eq 5 }">
				<c:forEach begin="1" end="5">
					<img src="resources/img/star.png" width="20" height="20">
				</c:forEach>
				</c:if>
			</c:if>
			</td>
			<td width="50%">
				<c:if test="${dto.review_report ne 0 }">
					관리자에 의해 규제된 댓글 입니다.
				</c:if>
				<c:if test="${dto.review_report eq 0 }">
					${dto.review_content }
				</c:if>
			</td>
			<td width="10%">
				<a href="javascript:checkDel('${dto.review_num}','${getGame.game_num }')"><input type="button" value="삭제"></a>
				<c:if test="${dto.review_report ne 0 }">
				</c:if>				
				<c:if test="${dto.review_report eq 0 }">
					| <a href="javascript:checkReport('${dto.review_num}','${getGame.game_num }')"><input type="button" value="신고"></a>
				</c:if>
			<%--  onclick="window.location='review_report.do?review_num=${dto.review_num}'" --%>
			</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
</form>
<form name="f3" action="game_view.do" method="post">
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
   <c:if test="${count > 0}">
	         <c:if test="${startPage > pageBlock}">
	             <li class="page-item">
	            <a class="page-link" href="game_view.do?game_num=${getGame.game_num}&pageNum=${startPage - pageBlock}" aria-label="Previous">
	              <span aria-hidden="true">&laquo;</span>
	            </a>
	            </li>
	         </c:if>
	         
	         <c:forEach var="i" begin="${startPage}" end="${endPage}">
	             <li class="page-item">
	              <a class="page-link" href="game_view.do?game_num=${getGame.game_num}&pageNum=${i}">${i}</a></li>
	       </c:forEach>
	    
	   <c:if test="${endPage < pageCount}">
	             <li class="page-item">
	               <a class="page-link" href="game_view.do?game_num=${getGame.game_num}&pageNum=${startPage + pageBlock}" aria-label="Next">
	                 <span aria-hidden="true">&raquo;</span>
	              </a>
	          </li>
	        </c:if>  
    </c:if>
     </ul>
</nav>
</form>
<form name="f2" action="review_delete.do" method="post">
	<input type="hidden" name="review_num">
	<input type="hidden" name="game_num">
</form>
</div>
<%@ include file="../user/user_bottom.jsp"%>
