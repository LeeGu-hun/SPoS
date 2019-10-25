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
												<a href="#" class="deleteBoard">x</a>
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
										<input class="uid" type="hidden" value="${board.user_id }"> 
										<input class="bdate" type="hidden" value="${board.board_updatedate }">
										<c:if test="${board.attachList[0].picture_path eq null}">
											<img src="resources/images/noimg.png" class="img-responsive">
										</c:if>
										<c:if test="${board.attachList[0].picture_path ne null}">
											<c:forEach items="${board.attachList }" var="attach" varStatus="status">
												<img src="display?fileName=${attach.picture_path }/${attach.picture_uuid }_${attach.picture_name }" class="img-responsive" alt="${status.index }" 
													 style="<c:if test='${status.index ne 0}'>display: none;</c:if>">
											</c:forEach>
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
							<h5 class='modal-title' id='modalLabel' style="float:left;">제목</h5>
							<div style="float:left;margin-left:50px"><button class="left">&lt;</button><button class="right">&gt;</button></div>
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
					str += "		<small class='pull-right text-muted'>" + replyService.displayTime(replyList[i].reply_regdate) + "&nbsp&nbsp<a href='deleteReply();' class='panel-action panel-action-dismiss reply-dismiss' data-panel-dismiss=''></a></small>";
					str += "		</div></div></li>";
				}
				str += "<button class='btn btn-primary btn-block btn-lg' style='width: 100%;'>more</button>"
				$("#confirmModal .reply-content").html(str);
				//$('#confirmModal .reply-content').animate({scrollTop: $('#confirmModal .reply-content').prop("scrollHeight")}, 500);
    		});
		} // end showList
		
		function deleteBoard(board_index, user_index) {
			$.ajax({
				type : 'POST',
				url : '/delete/' + board_index,
				data : user_index,
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				}, 
				contentType : "application/json",
				success: function(result){
					console.log(">-<");
					console.log(result);
					$("#boardDiv").html("");
		    		var searchForm = $("#searchForm");
		    		var type = searchForm.find("select[name='type']").val();
		    		var keyword = searchForm.find("input[name='keyword']").val();
			    	var cri =  {pageNum:1, amount:6, type:type, keyword:keyword};
			    	getBoardList(cri);
				}
			});
		}
		
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
	    		
				//bpic.find("style")	    					
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

	    	$("#main-content .row").on("click", ".deleteBoard", function(e){
				e.preventDefault();
	    		var board_index = $(this).parent().parent().parent().find(".bidx").val();
	    		var user_id = $(this).parent().parent().parent().find(".uid").val();
				console.log("delete.. : " + board_index);
				console.log("delete.. : " + user_id);
				
				deleteBoard(board_index, user_id, function(result){});
	    	});
	    	
	    	/* $(".left").on("click", function(e){
	    		$(".gallery-box img").each(function(i, obj){
					var jobj = $(obj);
					console.log(jobj.attr("src"));
	    		});
	    		
    		}); */
    		
	    	
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
    		
    		// *--Start uploadfile--*
    		var regex = new RegExp("(.*?)\.(jpg|png|gif|bmp)$");
    		var maxSize = 5242880; //5MB
    		
    		function checkExtension(fileName, fileSize) {
    			if(fileSize >= maxSize) {
    				alert("파일 사이즈 초과!");
    				return false;
    			}
    			if(!regex.test(fileName)) {
    				alert("그림 파일만 업로드 할 수 있습니다(jpg, png, gif, bmp).");
    				return false
    			}
    			return true;
    		} // checkExtension
    		
    		function showUploadResult(uploadResultArr) {
    			if(!uploadResultArr || uploadResultArr.length == 0) {return;}
    			
    			var uploadUL = $(".uploadResult ul");
    			var str = "";
    			
    			$(uploadResultArr).each(function(i, obj){
   					var fileCallPath = encodeURIComponent(obj.picture_path + "/s_" + obj.picture_uuid + "_" + obj.picture_name);
   					str += "<li data-picture_path='"+obj.picture_path+"' data-picture_uuid='"+obj.picture_uuid+"' data-picture_name='"+obj.picture_name+"' data-type='image' style='float:left;'>";
   					str += "<div><span>"+obj.picture_name+"</span>";
   					str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
   					str += "<img src='/display?fileName="+fileCallPath+"'></div></li>";
    			});
    			console.log(str);
    			uploadUL.append(str);
    		} // showUploadResult function
    		
    		$(".uploadFile").change(function(e){
    			var formData = new FormData();
	    		var inputFile = $(".uploadFile");
    			var files = inputFile[0].files;
    			
    			//add filedata to formdata
    			for(var i=0; i<files.length; i++) {
    				if(!checkExtension(files[i].name, files[i].size)) {
    					return false;
    				}
    				formData.append("uploadFile", files[i]);
    			}

    			console.log(files);
    			
    			$.ajax({
    				url: '/uploadAjaxAction',
    				processData: false,
    				contentType: false,
    				beforeSend: function(xhr) {
    					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
    				},
    				data: formData,
    				type: 'POST',
    				dataType:'json',
    				success: function(result){
    					console.log("result");
    					console.log(result);
    					showUploadResult(result);
    				}
    			}); // $.ajax
    		}); // .uploadFile change
    		
    		$(".uploadResult").on("click", "button", function(e){
    			console.log("delete file..");
    			var targetFile = $(this).data("file");
    			var type = $(this).data("type");
    			console.log(targetFile);
    			
    			$.ajax({
    				url : '/deleteFile',
    				data : {fileName:targetFile, type:type},
    				beforeSend: function(xhr) {
    					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
    				},
    				dataType : 'text',
    				type : 'POST',
    				success : function(result){
    					alert(result);
    				}
    			});
    			$(this).closest("li").remove();
    		});
    		
    		$(".addBtn_board").on("click", function(e){
	    		e.preventDefault();
	    		var content = $(".addArea").val();
	    		
	    		var formData = new FormData();
	    		var inputFile = $(".uploadFile");
	    		var files = inputFile[0].files;
	    		
	    		console.log(files);
	    		
	    		if(content == '' || content==null){
		    		alert("내용을 적어주세요");
		    		$(".addArea").focus();
	    		} else {

		    		var str="";
					$(".uploadResult ul li").each(function(i, obj){
						var jobj = $(obj);
						console.dir(jobj);
						
						str += "<input type='hidden' name='attachList["+i+"].picture_name' value='"+jobj.data("picture_name")+"'>";
						str += "<input type='hidden' name='attachList["+i+"].picture_uuid' value='"+jobj.data("picture_uuid")+"'>";
						str += "<input type='hidden' name='attachList["+i+"].picture_path' value='"+jobj.data("picture_path")+"'>";
					});
		    		$("#submitFrm").append(str).submit();
		    		alert("등록되었습니다.");
	    		}
    		});
	    });
    </script>
<%@include file="/WEB-INF/views/include/footer.jsp" %>