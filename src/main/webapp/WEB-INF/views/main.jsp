<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
	
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.username" var="currentUserName"/>
</sec:authorize>

<div id="headline-top">
	<img alt="asdwd" src="resources/images/avtar-1.jpg"> <span
		class="menu-text">${currentUserName }</span>
	<ul>
		<li><a href="#"><i class="fa fa-home"></i>&nbsp;타임라인</a></li>
		<li><a href="#"><i class="fa fa-paw"></i>&nbsp;내 반려동물</a></li>
		<li><a href="#"><i class="fa fa-user"></i>&nbsp;친구</a></li>
		<li><a href="#"><i class="fa fa-info"></i>&nbsp;내 정보</a></li>
	</ul>
</div>

<div class="row" style="margin:0;">
	<div class="col-md-6" style="padding:0px;width:100%;">
		<div class="panel">
			<header class="panel-heading">
				<h2 class="panel-title"><span class="helping-text">오늘은 어떤 일이 있었나요?</span></h2>
			</header>
			<form id="submitFrm" action="/register" method="post">
				<div class="panle-body" style="height: 100px;">
					<div style="float:left"><img alt="asdwd" src="resources/images/avtar-1.jpg" style="width:60px;height:60px;margin:10px;-webkit-border-radius:70px;"></div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<input name="user_index" type="hidden" value="1">
					<input name="board_title" placeholder="제목"> 
					<textarea class="addArea" name="board_content" placeholder="알려주세요" style="resize:none;float:left;width:80%;margin-top: 10px;"></textarea>
				</div>
				<div>
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">사진 첨부</div>
							<!-- /.panel-heading -->

							<div class="panel-body">
								<div class="form-group uploadDiv">
									<input type="file" class='uploadFile' multiple>
								</div>
								<div class='uploadResult'>
									<ul>

									</ul>
								</div>
							</div>
							<!-- end panel-body -->
						</div>
						<!-- end panel-body -->
					</div>
					<!-- end panel -->
					
					<button class="addBtn_board" type="button">작성</button>
				</div>
			</form>
		</div>
		<!--end panel-->
	</div>
</div>