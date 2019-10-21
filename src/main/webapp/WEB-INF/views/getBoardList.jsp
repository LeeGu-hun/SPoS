<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${listMore }" var="boardMore">
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
					<a href="https://mypetlife.co.kr/54167/">${boardMore.board_title }</a><span
						class="helping-text">by ${boardMore.user_index }</span>
				</h2>
			</header>
			<div class="panle-body">
				<a class="gallery-box" href="https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg"> 
					<input class="bidx" type="hidden" value="${boardMore.board_index }">
					<input class="bdate" type="hidden" value="${boardMore.board_updatedate }">
					<img src="https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg" class="img-responsive">
					<div class="gallery-overlay">
						<i>${board.board_title }</i>
					</div>
					<div class="conText">
						<i style="font-size: 2em;">${boardMore.board_content }</i>
					</div>
				</a>
			</div>
		</div>
		<!--end panel-->
	</div>
</c:forEach>
<button id="moreBtn" type="button" class="btn btn-primary btn-block btn-lg">More</button>
<script>
$(document).ready(function(){
	$("#moreBtn").on("click", function(e){
    	var cri =  {pageNum:"${pageMaker.pageNum}", amount:6};
    	getBoardList(cri);
    	$(this).remove();
	});
});
</script>