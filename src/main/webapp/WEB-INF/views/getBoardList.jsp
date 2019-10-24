<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${list }" var="board">
	<div class="col-md-6">
		<div class="panel">
			<header class="panel-heading">
				<div class="panel-actions">
					<sec:authorize access="isAuthenticated()">
						<c:if test="${board.user_id eq currentUserName}">
							<a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
						</c:if>
					</sec:authorize>
					<div class="dropdown pull-left">
						<a href="" data-toggle="dropdown" class="dropdown-toggle">
							<i class="ion-more"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-scale">
							<li><a href="javascript:void(0)">다시 보지않기</a></li>
							<li><a href="javascript:void(0)">다시 보기</a></li>
							<li><a href="javascript:void(0)">그렇게 하기</a></li>
						</ul>
					</div>
				</div>
				<h2 class="panel-title">${board.board_title }
					<span class="helping-text">by ${board.user_index }</span>
				</h2>
			</header>
			<div class="panle-body">
				<a class="gallery-box" href="#"> 
					<input class="bidx" type="hidden" value="${board.board_index }"> 
					<input class="bdate" type="hidden" value="${board.board_updatedate }">
					<c:if test="${board.attachList[0].picture_path eq null}">
						<img src="resources/images/noimg.png" class="img-responsive">
					</c:if>
					<c:if test="${board.attachList[0].picture_path ne null}">
						<img src="display?fileName=${board.attachList[0].picture_path }/${board.attachList[0].picture_uuid }_${board.attachList[0].picture_name }" class="img-responsive">
					</c:if>
					<div class="gallery-overlay">
						<i>${board.board_title }</i>
					</div>
					<div class="conText">
						<i style="font-size: 2em;">${board.board_content }</i>
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
	$("#boardDiv").on("click", "#moreBtn", function(e){
		thisPage = thisPage+1;
    	var cri =  {pageNum:thisPage, amount:6};
    	getBoardList(cri);
    	$(this).remove();
	});
});
</script>