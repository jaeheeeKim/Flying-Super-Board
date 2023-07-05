<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 미치겠네 스크롤 왜 안 생기냐고 -->

    <!-- 피드 상세 탭 전체 -->
	<div class="container" style="width: 600px;">
		<!-- 상단 베젤 -->
		<div class="d-flex align-items-center flex-shrink-0 p-3 border-bottom container">
			<div class="col-auto" align="left">
				<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#grid"></use></svg>
			</div>
			<div class="col-auto" align="left">
				<span class="link-dark text-decoration-none fs-5 fw-semibold">피드 상세 보기</span>
			</div>
		</div>
		<!-- 하단부 -->
		<div class="row" style="overflow: auto;">
			<div class="col">
				<!-- 피드 -->
				<div class="row" style="padding: 16px">
					<div class="col mb-3" align="left" style="padding: 15px 0px 0px 22px;">
					<img src="resources/img/default_profile.png" width="25" height="25">&nbsp
	        				<strong>${id}</strong>
	        		</div>
        			<div class="col container" align="right">
        				<div class="row mb-2"><small class="text-muted">| 신고</small></div>
        				<div class="row mb-2">
        					<div class="col" align="right">
        						<svg fill="#A6A6A6" width="16" height="20"><use xlink:href="#location"></use></svg>
        						<small class="text-muted">서울시 노원구 ㅁㅁ카페</small>
        					</div>
        				</div>
        			</div>
				</div>
				<div class="container">
	      			<div class="row">
     					<div class="container small">
     						<div class="row mb-1" style="padding: 10px 20px 20px 20px; font-size: 16; line-height: 150%; word-break: break-all;">
     							qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq어른들은 나에게 속이 보였다 안 보였다 하는 보아뱀의 그림따위는 집어 치우고, 차라리 지리나 산수, 역사, 문법에 재미를 붙여 보라고 충고했다. 나는 이렇게 해서 내 나이 여섯 살적에 화가라고 하는 멋있는 작업을 포기했다. 나는 내 그림 제 1 호와 제 2호의 실패로 그만 기가 죽었던 것이다. 어른들은 자기들 혼자서는 아무것도 이해하지 못하고, 그렇다고 그 때마다 자꾸자꾸 설명을 해 주자니 어린애에겐 힘겨운 일이었다. 그래서 나는 다른 직업을 골라야 했고, 비행기 조종을 배웠다. 나는 세계의 여기저기 제법 많은 곳을 날아다녔다. 그 덕분에 나는 한 번 쓱 보아도 중국과 아리조나를 구별할 수 있었다. 밤의 어둠 속에서 길을 잃을 때 지리는 매우 편리하다. 나는 이렇게 살아오는 동안 착실한 사람들을 많이 만나 자주자주 접촉을 했다. 나는 오랫동안 어른들과 함께 살며 그들을 아주 가까이서 보아왔다. 그렇다고 해서 내 의견이 크게 달라지지는 않았다. 나는 좀 똑똑해 보이는 사람을 만날 때마다, 항상 품고 다니던 내 그림 제 1호를 꺼내 그를 시험해 보곤 했다. 그가 정말 이해력 있는 사람인가 알고 싶었던 것이다. 그러나 늘 이런 대답이었다. '그건 모자로군요.' 그러면 나는 보아뱀 이야기도 처녀림 이야기도 별 이야기도 꺼내지 않았다.나는 그가 알아 들을 수 있는 트럼프 이야기, 골프 이야기, 넥타이이야기를 했다. 그러면 그 어른은 분별 있는 사람을 또 하나 알게 되었다고 아주 흐뭇해 하는 것이었다.
     						</div>
     						<div class="row mb-1"><img src="resources/img/main1.jpg"></div>
     						<div class="row">
     							<div class="col mt-3 small" style="padding:0">
     								<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#text-quote"></use></svg>
     								11
     								<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#heart-empty"></use></svg>
     								14
     								<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#message"></use></svg>
     								쪽지 보내기
     							</div>
     						</div>
     					</div>
     				</div>
	     		</div>
				<!-- 댓글 전체-->
				<div class="row">
					<div class="col container">
						<c:forEach var="i" begin="0" end="20" step="1">
						<!-- 댓글 하나 -->
						<div class="row"></div>
						</c:forEach>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
	
	
	<!-- 자투리 -->
	
	<!-- 피드 상세 탭 전체 -->
	<div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 600px;">
		<!-- 상단바 -->
		<div class="d-flex align-items-center flex-shrink-0 p-3 border-bottom container">
			<div class="col-auto" align="left">
				<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#grid"></use></svg>
			</div>
			<div class="col-auto" align="left">
				<span class="link-dark text-decoration-none fs-5 fw-semibold">피드 상세 보기</span>
			</div>
		</div>
			<div class="list-group list-group-flush border-bottom scrollarea" style="width: 600px;">			
			<!-- 피드 하나 -->		
			<div class="list-group-item py-3 lh-sm">
	      		<!-- 상단부 -->
	      		<div class="container d-flex w-100 align-items-center justify-content-between">
	      			<div class="col mb-3" align="left" style="padding: 15px 0px 0px 22px;">
	      				<img src="resources/img/default_profile.png" width="25" height="25">&nbsp
	        				<strong>${id}</strong>
	        			</div>
	        			<div class="col container" align="right">
	        				<div class="row mb-2"><small class="text-muted">| 신고</small></div>
	        				<div class="row mb-2">
	        					<div class="col" align="right">
	        						<svg fill="#A6A6A6" width="16" height="20"><use xlink:href="#location"></use></svg>
	        						<small class="text-muted">서울시 노원구 ㅁㅁ카페</small>
	        					</div>
	        				</div>
	        			</div>
	      		</div>
	      		<!-- 하단부 -->
	      		<div class="container">
	      			<div class="row">
     					<div class="container small">
     						<div class="row mb-1" style="padding: 10px 20px 20px 20px; font-size: 16; line-height: 150%; word-break: break-all;">
     							어른들은 나에게 속이 보였다 안 보였다 하는 보아뱀의 그림따위는 집어 치우고, 차라리 지리나 산수, 역사, 문법에 재미를 붙여 보라고 충고했다. 나는 이렇게 해서 내 나이 여섯 살적에 화가라고 하는 멋있는 작업을 포기했다. 나는 내 그림 제 1 호와 제 2호의 실패로 그만 기가 죽었던 것이다. 어른들은 자기들 혼자서는 아무것도 이해하지 못하고, 그렇다고 그 때마다 자꾸자꾸 설명을 해 주자니 어린애에겐 힘겨운 일이었다. 그래서 나는 다른 직업을 골라야 했고, 비행기 조종을 배웠다. 나는 세계의 여기저기 제법 많은 곳을 날아다녔다. 그 덕분에 나는 한 번 쓱 보아도 중국과 아리조나를 구별할 수 있었다. 밤의 어둠 속에서 길을 잃을 때 지리는 매우 편리하다. 나는 이렇게 살아오는 동안 착실한 사람들을 많이 만나 자주자주 접촉을 했다. 나는 오랫동안 어른들과 함께 살며 그들을 아주 가까이서 보아왔다. 그렇다고 해서 내 의견이 크게 달라지지는 않았다. 나는 좀 똑똑해 보이는 사람을 만날 때마다, 항상 품고 다니던 내 그림 제 1호를 꺼내 그를 시험해 보곤 했다. 그가 정말 이해력 있는 사람인가 알고 싶었던 것이다. 그러나 늘 이런 대답이었다. '그건 모자로군요.' 그러면 나는 보아뱀 이야기도 처녀림 이야기도 별 이야기도 꺼내지 않았다.나는 그가 알아 들을 수 있는 트럼프 이야기, 골프 이야기, 넥타이이야기를 했다. 그러면 그 어른은 분별 있는 사람을 또 하나 알게 되었다고 아주 흐뭇해 하는 것이었다.
     						</div>
     						<div class="row mb-1"><img src="resources/img/main1.jpg"></div>
     						<div class="row">
     							<div class="col mt-3 small" style="padding:0">
     								<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#text-quote"></use></svg>
     								11
     								<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#heart-empty"></use></svg>
     								14
     								<svg class="bi pe-none me-2" fill="#A6A6A6" width="20" height="20"><use xlink:href="#message"></use></svg>
     								쪽지 보내기
     							</div>
     						</div>
     					</div>
     				</div>
	     		</div>
	     	</div>
     		<!-- 댓글 -->
     		<c:forEach var="i" begin="0" end="20" step="1">
			<!-- 댓글 하나 -->
				<div class="list-group-item py-3 lh-sm small container">댓글~</div>
			</c:forEach>
		</div>
		    
	</div>