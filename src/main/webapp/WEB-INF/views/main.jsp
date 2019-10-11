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
	                                        <h2 class="panel-title"><a href="https://mypetlife.co.kr/54167/">${board.board_title }</a><span class="helping-text">by ${board.user_index }</span></h2>
	                                    </header>
	                                    <div class="panle-body">
											<a class="gallery-box" href="https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg" data-lightbox="gallery">
                              					<img src="https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg"	alt="${board.board_content }" class="img-responsive">
                           						<div class="gallery-overlay">
                           							<i class="ion-ios-eye-outline"></i>
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

	<!-- <div id="lightboxOverlay" class="lightboxOverlay"></div>
	<div id="lightbox" class="lightbox">
		<div class="lb-outerContainer">
			<div class="lb-container">
				<img class="lb-image"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" />
				<div class="lb-nav">
					<a class="lb-prev" href=""></a><a class="lb-next" href=""></a>
				</div>
				<div class="lb-loader">
					<a class="lb-cancel"></a>
				</div>
			</div>
		</div>
		<div class="lb-dataContainer">
			<div class="lb-data">
				<div class="lb-details">
					<span class="lb-caption"></span><span class="lb-number"></span>
				</div>
				<div class="lb-closeContainer">
					<a class="lb-close"></a>
				</div>
			</div>
		</div>
	</div> -->

	<!--Common plugins-->
        <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
        <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/plugins/hoe-nav/hoe.js"></script>
        <script src="resources/plugins/pace/pace.min.js"></script>
        <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="resources/js/app.js"></script>
        <!--page scripts-->
        <script src="resources/plugins/lightbox2/dist/js/lightbox.min.js"></script>
        
        <script>
		    function getBoardList(cri) {
				var csrfHeaderName = "${_csrf.headerName}";
				var csrfTokenValue = "${_csrf.token}";
				console.log(cri)
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
		    $(document).ready(function(){
		    	$("#moreBtn").on("click", function(e){
			    	var cri =  {pageNum:2, amount:6};
			    	getBoardList(cri);
			    	$(this).remove();
		    	});
		    });
	    </script>
    </body>
</html>