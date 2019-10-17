<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<html lang="kr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>애완동물</title>

        <!-- Bootstrap -->
        <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
        <link href="resources/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="resources/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
        <link href="resources/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <!--template custom css file-->
        <link href="resources/css/style.css" rel="stylesheet">

        <script src="resources/js/modernizr.js"></script>
        <!--Common plugins-->
        <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
        <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/plugins/hoe-nav/hoe.js"></script>
        <script src="resources/plugins/pace/pace.min.js"></script>
        <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="resources/js/app.js"></script>
        <!--page scripts-->
        <!-- Flot chart js -->
        <script src="resources/plugins/flot/jquery.flot.js"></script>
        <script src="resources/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="resources/plugins/flot/jquery.flot.resize.js"></script>
        <script src="resources/plugins/flot/jquery.flot.pie.js"></script>
        <script src="resources/plugins/flot/jquery.flot.time.js"></script>
        <!--vector map-->
        <script src="resources/plugins/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="resources/plugins/vectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- ChartJS-->
        <script src="resources/plugins/chartJs/Chart.min.js"></script>
        <!--dashboard custom script-->
        <script src="resources/js/dashboard.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
        	/* .newPetBoard{
        		display: table-cell;
        		vertical-align: bottom;
        		text-align: center;
        		background-size: cover;
        	} */
        	
        </style>
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

        <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <header id="hoe-header" hoe-lpanel-effect="shrink">
			<div class="hoe-left-header">
                    <a href="#"> A<span>SSAN</span></a>
                    <span class="hoe-sidebar-toggle"><a href="#"></a></span>
                </div>

                <div class="hoe-right-header" hoe-position-type="relative">
                    <span class="hoe-sidebar-toggle"><a href="#"></a></span>
                    <ul class="left-navbar">
                        <li>
                            <div class="search-form-div">
                                <form id="searchForm" action="/include/header" method="get">
									<select name="type" id="type" style="width: 72px; height: 32px;">
										<option value=""
											<c:out vlaue="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
										<option value=""
											<c:out vlaue="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
										<option value=""
											<c:out vlaue="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>이름</option>
									</select>
									<input type="text" name="keyword" class="search-input"
										placeholder="Search here" value="${pageMaker.cri.keyword}"
										style="height:34px;">
	                                   <i class="ion-search"></i>
	                                <button class="btn btn-default" style="display:inline-block;">Search</button>
                                </form>
                            </div>
                        </li>
                    </ul>
                    <ul class="right-navbar navbar-right">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"> <i class="ion-ios-bell-outline"></i> <span class="label label-danger">4</span></a>
                            <ul class="dropdown-menu dropdown-menu-scale lg-dropdown notifications">
                                <li> <p>You have 3 new notifications <a href="#"> Mark all Read</a></p></li>
                                <li class="unread-notifications">
                                    <a href="#">
                                        <i class="ion-ios-email-outline pull-right"></i>
                                        <span class="line">You have 8 Messages</span>
                                        <span class="small-line">3 Minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ion-social-twitter-outline pull-right"></i>
                                        <span class="line">You have 3 new followers</span>
                                        <span class="small-line">8 Minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ion-ios-download-outline pull-right"></i>
                                        <span class="line">Download Complete</span>
                                        <span class="small-line">6 Minutes ago</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="resources/images/avtar.png" alt="" width="30" class="img-circle"> 김개똥</a>
                            <ul class="dropdown-menu dropdown-menu-scale user-dropdown">
                                <li><a href="#"><i class="ion-email-unread"></i> Inbox <span class="label label-warning">3</span></a></li>
                                <li><a href="#"><i class="ion-person"></i> Profile </a></li>
                                <li><a href="#"><i class="ion-settings"></i> Settings <span class="label label-primary">3/9</span></a></li>
                                <li><a href="#"><i class="ion-calendar"></i> Calendar </a></li>
                                <li><a href="#"><i class="ion-ios-compose"></i> Tasks </a></li>
                                <li><a href="#"><i class="ion-log-out"></i> Logout </a></li>
                            </ul>
                        </li>
				</ul>
				
				<form id="actionForm" action="/include/header" method="get">
					<input type="hidden" name="type" value="${pageMaker.cri.type}"/>
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }"/>
				</form>
                </div>
                
            </header>
            <div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
            <%@include file="/WEB-INF/views/include/leftMenu.jsp"%>
            <section id="main-content">
            
            
<script>
	$(document).ready(function(){
		var actionForm = $("#actionForm");
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e){
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				return false;
			}
		});
	});
</script>