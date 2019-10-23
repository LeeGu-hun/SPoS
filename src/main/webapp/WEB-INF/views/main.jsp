<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<div class="space-30"></div>
<div class="container">
	<div class="row">
		<c:forEach items="${list }" var="board">
			<div class="col-md-6">
				<div class="panel">
					<header class="panel-heading">
						<div class="panel-actions">
							<a href="javascript:void(0)"
								class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
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
							<img src="display?fileName=${board.attachList[0].picture_path }/${board.attachList[0].picture_uuid }_${board.attachList[0].picture_name }" class="img-responsive">
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
	</div>
	<!--end row-->
</div>
<!--end container-->

<!-- Modal-->
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h5 class='modal-title' id='modalLabel'>제목</h5>
			</div>
			<div class='modal-footer'>
				<div class='content-img'></div>
				<div class='modal-body'>
					<div class="content-body"></div>
					<div class="reply-body">
						<ul class='reply-content'></ul>
					</div>
					<div class="bottomDiv">
						<div class="bottomfrm">
							<input class="form-control" aria-label="댓글 달기..." placeholder="댓글 달기..." autocomplete="off" autocorrect="off">
							<button class="addBtn_reply" disabled="disabled">
								<span>게시</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>