<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!--start main content-->
	<link href="resources/css/home.css" rel="stylesheet">

	<div class="space-30"></div>
		<div class="container">
			<div id="headline-top">
				<img alt="asdwd" src="resources/images/avtar-1.jpg"> <span
					class="menu-text">김개똥</span>
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
								<hr style="margin:0px;border-top: 1px solid #eee;">
								<input type="file" class='uploadFile' multiple>사진 첨부
								<button class="addBtn_board" type="button">작성</button>
							</div>
						</form>
					</div>
					<!--end panel-->
				</div>
			</div>
			
			<%@include file="/WEB-INF/views/main.jsp"%>

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
					$(".row").append(result);
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
	    	$("#moreBtn").on("click", function(e){
		    	var cri =  {pageNum:2, amount:6};
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