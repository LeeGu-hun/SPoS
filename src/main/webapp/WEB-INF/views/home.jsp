<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
	
	<div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
		<sec:authorize access="isAuthenticated()">
			<%@include file="/WEB-INF/views/include/leftMenu.jsp"%>
		</sec:authorize>
		<section id="main-content" <sec:authorize access="isAnonymous()">style="margin-left:4%;"</sec:authorize>>
			<div class="space-30"></div>
			<div class="container">
				<sec:authorize access="isAuthenticated()">
					<%@include file="/WEB-INF/views/main.jsp"%>
				</sec:authorize>
				
				<div id="boardDiv" class="row">
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

	<script>
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
    	var bidx;
    	var replyLen;
    	
	    function getBoardList(cri) {
			$.ajax({
				url: '/getBoardList',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				}, 
				data : JSON.stringify(cri),
				type: 'POST',
				dataType:'html',
				contentType: 'application/json',
				success: function(result){
					$("#boardDiv").append(result);
				}
			}); // $.ajax
		}
	    function showList(amount){
	    	replyService.getList({board_index:bidx, amount:amount}, function(replyCnt, replyList){
				var str="";
				replyLen = replyList.length;
				if(replyList==null||replyLen==0){
					$("#confirmModal .reply-content").html(str);
					return;
				}
				for(var i=0, len=replyLen||0; i<len; i++){
					str += "<li class='col-sm-6 margin-b-10' data-rno='"+replyList[i].reply_index+"'>";
					str += "	<div class='user-card clearfix'>";
					str += "		<img class='user_img' src='resources/images/avtar-1.jpg' alt='' width='90'>";
					str += "		<div class='user-card-content'>";
					str += "			<h4 class='replyTxt'>"+replyList[i].reply_content+"</h4>";
					str += "		<small class='pull-right text-muted'>" + replyService.displayTime(replyList[i].reply_regdate) + "&nbsp&nbsp<a href='#' class='panel-action panel-action-dismiss reply-dismiss' data-panel-dismiss=''></a></small>";
					str += "		</div></div></li>";
				}
				str += "<button class='btn btn-primary btn-block btn-lg' style='width: 100%;'>more</button>"
				$("#confirmModal .reply-content").html(str);
				//$('#confirmModal .reply-content').animate({scrollTop: $('#confirmModal .reply-content').prop("scrollHeight")}, 500);
    		});
		} // end showList
		
	    $(document).ready(function(){
	    	var thisPage = 1; 
	    	$("#boardDiv").on("click", "#moreBtn", function(e){
	    		thisPage = thisPage+1;
	    		var searchForm = $("#searchForm");
	    		var type = searchForm.find("select[name='type']").val();
	    		var keyword = searchForm.find("input[name='keyword']").val();
		    	var cri =  {pageNum:thisPage, amount:6, type:type, keyword:keyword};
		    	getBoardList(cri);
		    	$(this).remove();
	    	});
	    	
	    	$("#main-content .row").on("click", ".gallery-box", function(e){
	    		e.preventDefault();
	    		bidx = $(this).find(".bidx").val();
	    		var btitle = $(this).find(".gallery-overlay i").text();
	    		var bcontext = $(this).find(".conText").text();
	    		var bpic = $(this).find("img").clone();
	    		
	    		var tempStr = $(this).find(".bdate").val().split('KST');
	    		var bdate = new Date(tempStr[0]+tempStr[1]);
	    		
	    		$("#modalLabel").text(btitle);
	    					
	    		$("#confirmModal .content-img").html(bpic);
	    		
	    		var str = "";
	    		str += "<div class='col-sm-6 margin-b-10'>";
				str += "	<div class='user-card clearfix'>";
				str += "		<img class='user_img' src='resources/images/avtar-1.jpg' alt='' width='90'>";
				str += "		<div class='user-card-content'>";
				str += "			<h4 class='replyTxt'>"+bcontext+"</h4>";
				str += "		<small class='pull-right text-muted'>" + replyService.displayTime(bdate) + "</small>";
				str += "		</div></div></div>";
				
	    		$("#confirmModal .content-body").html(str);
	    		$("#confirmModal").modal("show");
	    		
	    		showList(4);
	    	});
	    	
	    	$(".form-control").on("keydown keyup keypress", function(e){
	    		$(".addBtn_reply").attr("disabled", false);
	    		var inputVal = $(".form-control").val();
	    		if(inputVal == ''){
		    		$(".addBtn_reply").attr("disabled", true);
		    		$(".addBtn_reply span").css("opacity", ".3");
	    		}
	    		else{
		    		$(".addBtn_reply span").css("opacity", "1");
	    		}
			});
	    	
    		$(".addBtn_reply").on("click", function(e){
	    		var inputVal = $(".form-control");
	    		if(inputVal.val() == ''){
	    			$(".form-control").focus();
	    		} else{
	    			var reply = {
	    					board_index: bidx,
	    					user_index: '1',
	    					reply_content: inputVal.val()
	    			};
	    			replyService.add(reply, function(result){
	    				inputVal.val("");
			    		$(".addBtn_reply").attr("disabled", true);
			    		$(".addBtn_reply").css("opacity", ".3");
			    		replyLen = replyLen + 1;
			    		showList(replyLen);
	    			});
	    		}
    		});

    		$(".reply-content").on("click", ".panel-action", function(e){
	    		e.preventDefault();
	    		var ridx = $(this).parent().parent().parent().parent().attr("data-rno");
		    	replyService.remove(ridx, "1", function(result){
		    		showList(replyLen);
		    	});
    		});
    		
    		$(".reply-content").on("click", ".btn", function(e){
	    		e.preventDefault();
	    		replyLen = replyLen + 4;
	    		showList(replyLen);
    		});

    		$(".addBtn_board").on("click", function(e){
	    		e.preventDefault();
	    		var content = $(".addArea").val();
	    		var img = $(".uploadFile").val();
	    		console.log(img);
	    		
	    		/* var img = $(".gallery-box .img-responsive").attr("src");
	    		if(img == "display?fileName=/_"){
	    			img.attr("src", "resources/images/avtar-9.jpg");
	    		} */
	    		
	    		if(content == '' || content==null){
		    		alert("내용을 적어주세요");
		    		$(".addArea").focus();
	    		} else {
		    		alert("등록");

		    		if(img = ''){
		    			
		    		} else {
		    			
		    		}
		    		//$("#submitFrm").submit();
	    		}
    		});
	    });
    </script>
<%@include file="/WEB-INF/views/include/footer.jsp" %>