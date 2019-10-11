<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${list }" var="board">
	<div class="col-md-6">
		<div class="panel">
			<header class="panel-heading">
				<div class="panel-actions">
					<a href="javascript:void(0)"
						class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
					<div class="dropdown pull-left">
						<a href="" data-toggle="dropdown" class="dropdown-toggle"><i
							class="ion-more"></i></a>
						<ul class="dropdown-menu dropdown-menu-scale">
							<li><a href="javascript:void(0)">다시 보지않기</a></li>
							<li><a href="javascript:void(0)">다시 보기</a></li>
							<li><a href="javascript:void(0)">그렇게 하기</a></li>
						</ul>
					</div>
				</div>
				<h2 class="panel-title">
					<a href="https://mypetlife.co.kr/54167/">${board.board_title }</a><span
						class="helping-text">by ${board.user_index }</span>
				</h2>
			</header>
			<div class="panle-body">
				<a class="gallery-box"
					href="https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg"
					data-lightbox="gallery"> <img
					src="https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg"
					alt="${board.board_content }" class="img-responsive">
					<div class="gallery-overlay">
						<i class="ion-ios-eye-outline"></i>
					</div>
				</a>
			</div>
		</div>
		<!--end panel-->
	</div>
</c:forEach>