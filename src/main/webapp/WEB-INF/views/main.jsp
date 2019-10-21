<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kr">
    <head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <title>Assan admin</title>
	
	    <!-- Bootstrap -->
	    <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <!--side menu plugin-->
	    <link href="resources/plugins/hoe-nav/hoe.css" rel="stylesheet">
	    <!-- icons-->
	    <link href="resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
	    <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	    <link href="resources/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
	    <link href="resources/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
	    <link href="resources/plugins/lightbox2/dist/css/lightbox.css" rel="stylesheet">
	    <!--template custom css file-->
	    <link href="resources/css/style.css" rel="stylesheet">
	
	    <script src="resources/js/modernizr.js"></script>
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    <style>
			#main-content {
				margin-right: 230px;
			}
			
			.panel {
				align-items: center;
				justify-content: center;
			}
			
			.panel-body {
				text-align: center;
				background-size: 100% 100%;
				overflow: hidden;
				align-items: center;
				justify-content: center;
				height: 400px;
			}
			
			.all-over-thumb-link {
				display: block;
				height: 100%;
				width: 100%;
			}
			.conText {
				padding: 5px 10px;
				text-align: center;
				position: absolute;
				top: 90%;
				left: 50%;
				transform: translate( -50%, -50% );
			}
			.modal-dialog{
				width: 90%;
				margin-top: 5%;
			}
			.modal-header{
				 height:10%;
			}
			.modal-footer{
				padding:0px;
			}
			.content-img{
				border: 1px solid #eaeaea;
				width:70%;
				height:100%;
				float:left;
			}
			.content-img img{
				width:100%;
				height:100%;
			}
			.modal-body{
				width:30%;
				height:100%;
				float:right;
				padding: 0px;
			}
			.content-body{
			 	margin:1%;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    padding-left: 10px;
			    padding-top: 10px;
			}
			.content-body .user-card{
			    background-color: floralwhite;
			}
			.reply-body{
			 	margin:1%;
			}
			.col-sm-6{
				width: 100%;
				padding: 0px;
			}
			.user-card {
			    padding: 10px;
			    border-width: 0px;
			}
			.user_img{
				height: 40px;
				width: 40px;
				margin-right : 10px;
			}
			.replyTxt{
			    float: left;
			    word-break: break-all;
			    width: 70%;
			}
			.reply-content{
				list-style-type: none;
				padding-left: 10px;
				height:35em;
			    overflow-y: auto;
			}
			.gallery-overlay i {
				word-break: break-all;
				text-align: center;
				transform: translate( -50%, -50% );
			}
			.modal-footer{
				text-align: unset;
			}
			.bottomDiv {
				width: inherit;
				position : fixed;
				bottom: -0.10%;
				padding-bottom: 2px;
				border: 0px;
				padding-right: 2px;
			}
			.form-control{
				width: 80%;
				float:left;
				border: 0px;
				border-top: 1px solid rgba(197, 214, 222, 0.7);
			}
			.addBtn{
				width: 20%;
				background-color: white;
				border: 0px;
				border-top: 1px solid rgba(197, 214, 222, 0.7);
				border-left: 1px solid rgba(197, 214, 222, 0.7);
				padding: 0px;
				float:left;
				color: rgba(var(--h5f,56,151,240),1);
			}
			.addBtn span{
				font-weight : 600;
		    	opacity : .3;
			}
		</style>
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

        <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
                <!--start main content-->
                <section id="main-content">
                    <div class="space-30"></div>
                    <div class="container">
                        <div class="row">
                        
                    		<c:forEach items="${list }" var="board">
	                            <div class="col-md-6">
	                                <div class="panel">
	                                	<header class="panel-heading">
	                                		<div class="panel-actions">
	                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
	                                            <div class="dropdown pull-left">
	                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
	                                                <ul class="dropdown-menu dropdown-menu-scale">
	                                                    <li><a href="javascript:void(0)">다시 보지않기</a></li>
	                                                    <li><a href="javascript:void(0)">다시 보기</a></li>
	                                                    <li><a href="javascript:void(0)">그렇게 하기</a></li>
	                                                </ul>
	                                            </div>
	                                        </div>
	                                        <h2 class="panel-title">${board.board_title }<span class="helping-text">by ${board.user_index }</span></h2>
	                                    </header>
	                                    <div class="panle-body">
											<a class="gallery-box" href="#">
                              					<input class="bidx" type="hidden" value="${board.board_index }">
                              					<input class="bdate" type="hidden" value="${board.board_updatedate }">
                              					<img src="display?fileName=${board.attachList[0].picture_path }/${board.attachList[0].picture_uuid }_${board.attachList[0].picture_name }"	class="img-responsive">
                           						<div class="gallery-overlay">
                           							<i>${board.board_title }</i>
                           						</div>
                           						<div class="conText">
                           							<i style="font-size: 2em;">${board.board_content }</i>
                           						</div>
                           					</a>
										</div>
	                                </div><!--end panel-->
	                            </div>
							</c:forEach>
							<button id="moreBtn" type="button" class="btn btn-primary btn-block btn-lg">More</button>
                        </div><!--end row-->
                    </div><!--end container-->
                </section><!--end main content-->
            </div>
        </div><!--end wrapper-->

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
					<div class='content-img'>
					</div>
					<div class='modal-body' >
						<div class="content-body"></div>
						<div class="reply-body">
							<ul class='reply-content'></ul>
						</div>
						<div class="bottomDiv">
							<div class="bottomfrm">
								<input class="form-control" aria-label="댓글 달기..." placeholder="댓글 달기..."autocomplete="off" autocorrect="off">
								<button class="addBtn" disabled="disabled"><span>게시</span></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--Common plugins-->
	<script src="/resources/plugins/jquery/dist/jquery.min.js"></script>
	<script src="/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/plugins/hoe-nav/hoe.js"></script>
	<script src="/resources/plugins/pace/pace.min.js"></script>
	<script src="/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="/resources/js/app.js"></script>
	<!--page scripts-->
	<script src="/resources/plugins/lightbox2/dist/js/lightbox.js"></script>

	<script src="/resources/js/reply.js"></script>
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
	    		$(".addBtn").attr("disabled", false);
	    		var inputVal = $(".form-control").val();
	    		if(inputVal == ''){
		    		$(".addBtn").attr("disabled", true);
		    		$(".addBtn span").css("opacity", ".3");
	    		}
	    		else{
		    		$(".addBtn span").css("opacity", "1");
	    		}
			});
	    	
    		$(".addBtn").on("click", function(e){
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
			    		$(".addBtn").attr("disabled", true);
			    		$(".addBtn").css("opacity", ".3");
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
	    });
    </script>
</body>
</html>