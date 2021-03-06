<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
		<link href="resources/css/home.css" rel="stylesheet">
	
	    <script src="resources/js/modernizr.js"></script>
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
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
        <style>
        	.search-form-div {
        		margin-left: 20px;
        	}
        </style>
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

        <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <header id="hoe-header" hoe-lpanel-effect="shrink">
			<div class="hoe-left-header">
                    <a href="#"> P<span>ET</span></a>
                    <sec:authorize access = "isAuthenticated()">
                    	<span class="hoe-sidebar-toggle"><a href="#"></a></span>
					</sec:authorize>                    
                </div>

                <div class="hoe-right-header" hoe-position-type="relative">
                    <sec:authorize access = "isAuthenticated()">
                   		<span class="hoe-sidebar-toggle"><a href="#"></a></span>
                    </sec:authorize>
                    <ul class="left-navbar">
                        <li>
                            <div class="search-form-div">
                               <form id="searchForm" action="/home" method="get">
									<select name="type" id="type" style="width: 72px; height: 32px;">
										<option value='T'
											<c:out value="${pageMaker.type eq 'T'?'selected':'' }"/>>제목</option>
										<option value='C'
											<c:out value="${pageMaker.type eq 'C'?'selected':'' }"/>>내용</option>
										<option value='W'
											<c:out value="${pageMaker.type eq 'W'?'selected':'' }"/>>아이디</option>
										<option value='N'
											<c:out value="${pageMaker.type eq 'N'?'selected':'' }"/>>이름</option>
									</select>
									<input type="text" name="keyword" class="search-input"
										placeholder="Search here" value="${pageMaker.keyword}"
										style="height:34px;">
	                                <button class="btn btn-default">Search</button>
                                </form>
                            </div>
                        </li>
                    </ul>
                    <ul class="right-navbar navbar-right">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="resources/images/avtar.png" alt="" width="30" class="img-circle">
                            	<sec:authorize access="isAuthenticated()">
									<sec:authentication	property="principal.username" /> 님 환영합니다
								</sec:authorize>
								<sec:authorize access="isAnonymous()">로그인 하세요</sec:authorize>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-scale user-dropdown">
                                <li><a href="#"><i class="ion-email-unread"></i> Inbox <span class="label label-warning">3</span></a></li>
                                <sec:authorize access = "isAuthenticated()"><li><a href="modify"><i class="ion-person"></i> 회원정보수정 </a></li></sec:authorize>
                                <li><a href="#"><i class="ion-settings"></i> Settings <span class="label label-primary">3/9</span></a></li>
                                <li><a href="#"><i class="ion-calendar"></i> Calendar </a></li>
                                <li><a href="#"><i class="ion-ios-compose"></i> Tasks </a></li>
                                <sec:authorize access = "isAuthenticated()">
                              		<li><a data-toggle="modal" data-target="#logoutModal"><i class="ion-log-out"></i> Logout </a></li>
                                </sec:authorize>
                                <sec:authorize access = "isAnonymous()">
                               		<li><a href="/customLogin"><i class="ion-log-in"></i> Login </a></li>
                                </sec:authorize>
                            </ul>
                        </li>
				</ul>
                </div>
                <sec:authorize access="isAuthenticated()">
					<sec:authentication	property="principal.username" /> 님 환영합니다
				</sec:authorize>
            </header>
            
            <!-- Logout Modal-->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content" style="left:50%;width:30%;top:300px;transform:translateX(-50%);">
			      <div class="modal-header">
			        <h5 class="modal-title" style="margin-bottom:0;line-height:1.5;"id="exampleModalLabel">로그아웃 하시겠습니까? </h5>
			      </div>
			      <div class="modal-footer" style="text-align: center;">
			        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
			        <a class="btn btn-primary" href="/customLogout">Logout</a>
			      </div>
			    </div>
			  </div>
			</div>
<script>
	$(document).ready(function(){
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e){
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				return false;
			}
			e.preventDefault();
			searchForm.submit();
		});
	});
</script>