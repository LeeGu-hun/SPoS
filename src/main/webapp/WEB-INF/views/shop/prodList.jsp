
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>상품 조회</title>
<%@ include file="../include/header.jsp"%>
<!-- Bootstrap -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--side menu plugin-->
<link href="assets/plugins/hoe-nav/hoe.css" rel="stylesheet">
<!-- icons-->
<link href="assets/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- dataTables -->
<link href="assets/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/plugins/datatables/responsive.bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!--template custom css file-->
<link href="assets/css/style.css" rel="stylesheet">

<script src="assets/js/modernizr.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body hoe-navigation-type="vertical" hoe-nav-placement="left"
	theme-layout="wide-layout">

	<!--side navigation start-->
	<div id="hoeapp-wrapper" class="hoe-hide-lpanel"
		hoe-device-type="desktop">
		<header id="hoe-header" hoe-lpanel-effect="shrink">
			<div class="hoe-left-header">
				<a href="#"> A<span>SSAN</span></a> <span class="hoe-sidebar-toggle"><a
					href="#"></a></span>
			</div>

			<div class="hoe-right-header" hoe-position-type="relative">
				<span class="hoe-sidebar-toggle"><a href="#"></a></span>
				<ul class="left-navbar">
					<li>
						<div class="top-search hidden-xs">
							<form>
								<input type="text" class="form-control"
									placeholder="Search here"> <i class="ion-search"></i>
							</form>
						</div>
					</li>

				</ul>
				<ul class="right-navbar navbar-right">
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle"> <i class="ion-ios-bell-outline"></i>
							<span class="label label-danger">4</span></a>
						<ul
							class="dropdown-menu dropdown-menu-scale lg-dropdown notifications">
							<li>
								<p>
									You have 3 new notifications <a href="#"> Mark all Read</a>
								</p>
							</li>
							<li class="unread-notifications"><a href="#"> <i
									class="ion-ios-email-outline pull-right"></i> <span
									class="line">You have 8 Messages</span> <span
									class="small-line">3 Minutes ago</span>
							</a></li>
							<li><a href="#"> <i
									class="ion-social-twitter-outline pull-right"></i> <span
									class="line">You have 3 new followers</span> <span
									class="small-line">8 Minutes ago</span>
							</a></li>
							<li><a href="#"> <i
									class="ion-ios-download-outline pull-right"></i> <span
									class="line">Download Complete</span> <span class="small-line">6
										Minutes ago</span>
							</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle"><img src="assets/images/us.png" alt="">
							English</a>
						<ul class="dropdown-menu dropdown-menu-scale lang-dropdown">
							<li><a href="#"><img src="assets/images/us.png" alt="">
									English </a></li>
							<li><a href="#"><img src="assets/images/es.png" alt="">
									Spanish </a></li>
							<li><a href="#"><img src="assets/images/tr.png" alt="">
									Turkish </a></li>
						</ul></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle"><img src="assets/images/avtar.png"
							alt="" width="30" class="img-circle"> Emily Doe</a>
						<ul class="dropdown-menu dropdown-menu-scale user-dropdown">
							<li><a href="#"><i class="ion-email-unread"></i> Inbox <span
									class="label label-warning">3</span></a></li>
							<li><a href="#"><i class="ion-person"></i> Profile </a></li>
							<li><a href="#"><i class="ion-settings"></i> Settings <span
									class="label label-primary">3/9</span></a></li>
							<li><a href="#"><i class="ion-calendar"></i> Calendar </a></li>
							<li><a href="#"><i class="ion-ios-compose"></i> Tasks </a></li>
							<li><a href="#"><i class="ion-log-out"></i> Logout </a></li>
						</ul></li>
				</ul>
			</div>
		</header>
		<div id="hoeapp-container" hoe-color-type="lpanel-bg7"
			hoe-lpanel-effect="shrink">
			<aside id="hoe-left-panel" hoe-position-type="absolute">

				<ul class="nav panel-list">

					<li><a href="index.html"> <i class="fa fa-home"></i> <span
							class="menu-text">Dashboard</span> <span class="selected"></span>
					</a></li>
					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="fa fa-envelope"></i> <span class="menu-text">Email</span>
							<span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="email-inbox.html"> <span class="menu-text">Inbox</span>
									<span class="selected"></span>
							</a></li>
							<li><a href="email-compose.html"> <span
									class="menu-text">Compose</span> <span class="selected"></span>
							</a></li>
							<li><a href="email-view.html"> <span class="menu-text">Email
										View</span> <span class="selected"></span>
							</a></li>
						</ul></li>
					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="fa fa-bar-chart-o"></i> <span class="menu-text">Charts</span>
							<span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="chart-flot.html"> <span class="menu-text">Flot
										charts</span> <span class="selected"></span>
							</a></li>
							<li><a href="chart-morris.html"> <span class="menu-text">Morris
										charts</span> <span class="selected"></span>
							</a></li>
							<li><a href="chart-chartjs.html"> <span
									class="menu-text">Chartjs</span> <span class="selected"></span>
							</a></li>
							<li><a href="chart-sparkline.html"> <span
									class="menu-text">Sparkline</span> <span class="selected"></span>
							</a></li>
						</ul></li>
					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="fa fa-th-large"></i> <span class="menu-text">Forms</span>
							<span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="form-basic.html"> <span class="menu-text">Basic
										elements</span> <span class="selected"></span>
							</a></li>
							<li><a href="form-file-upload.html"> <span
									class="menu-text">File upload</span> <span class="selected"></span>
							</a></li>
							<li><a href="form-text-editor.html"> <span
									class="menu-text">Text editor</span> <span class="selected"></span>
							</a></li>
						</ul></li>
					<li class="hoe-has-menu active"><a href="javascript:void(0)">
							<i class="fa fa-table"></i> <span class="menu-text">Tables</span>
							<span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="table-static.html"> <span class="menu-text">Static
										tables</span> <span class="selected"></span>
							</a></li>
							<li><a href="table-responsive.html"> <span
									class="menu-text">Responsive Tables</span> <span
									class="selected"></span>
							</a></li>
							<li><a href="table-data.html"> <span class="menu-text">Data
										tables</span> <span class="selected"></span>
							</a></li>
						</ul></li>
					<li><a href="calendar.html"> <i class="fa fa-calendar"></i>
							<span class="menu-text">Calendar</span> <span class="selected"></span>
					</a></li>
					<li><a href="user-profile.html"> <i class="fa fa-user"></i>
							<span class="menu-text">User Profile</span> <span
							class="selected"></span>
					</a></li>
					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="fa fa-envelope"></i> <span class="menu-text">Pages</span>
							<span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="page-login.html"> <span class="menu-text">Login</span>
									<span class="selected"></span>
							</a></li>
							<li><a href="page-register.html"> <span
									class="menu-text">Register</span> <span class="selected"></span>
							</a></li>
							<li><a href="page-404.html"> <span class="menu-text">404</span>
									<span class="selected"></span>
							</a></li>
							<li><a href="page-forget-password.html"> <span
									class="menu-text">Forget password</span> <span class="selected"></span>
							</a></li>
							<li><a href="page-empty.html"> <span class="menu-text">Empty
										page</span> <span class="selected"></span>
							</a></li>
						</ul></li>
					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="fa fa-cogs"></i> <span class="menu-text">UI
								elements</span> <span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="ui-buttons.html"> <span class="menu-text">Buttons</span>
									<span class="selected"></span>
							</a></li>
							<li><a href="ui-typography.html"> <span
									class="menu-text">typography</span> <span class="selected"></span>
							</a></li>

							<li><a href="ui-tabs.html"> <span class="menu-text">Tabs</span>
									<span class="selected"></span>
							</a></li>
							<li><a href="ui-alerts.html"> <span class="menu-text">Alerts</span>
									<span class="selected"></span>
							</a></li>
							<li><a href="ui-tooltip_popovers.html"> <span
									class="menu-text">Tooltips & popovers</span> <span
									class="selected"></span>
							</a></li>
						</ul></li>
					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="fa fa-map-o"></i> <span class="menu-text">Maps</span> <span
							class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="map-vector.html"> <span class="menu-text">Vector
										map</span> <span class="selected"></span>
							</a></li>
							<li><a href="map-google.html"> <span class="menu-text">Google
										map</span> <span class="selected"></span>
							</a></li>
						</ul></li>

					<li class="hoe-has-menu"><a href="javascript:void(0)"> <i
							class="ion-ios-filing-outline"></i> <span class="menu-text">Menu
								Lavel 1</span> <span class="selected"></span>
					</a>
						<ul class="hoe-sub-menu">
							<li><a href="javascript:void(0)"> <span
									class="menu-text">level 2</span> <span class="selected"></span>
							</a></li>
							<li><a href="javascript:void(0)"> <span
									class="menu-text">level 2</span> <span class="selected"></span>
							</a></li>
							<li class="hoe-has-menu"><a href="javascript:void(0)"> <span
									class="menu-text">level 2</span> <span class="selected"></span>
							</a>
								<ul class="hoe-sub-menu">
									<li class="hoe-has-menu"><a href="javascript:void(0)">
											<span class="menu-text">level 3</span> <span class="selected"></span>
									</a>
										<ul class="hoe-sub-menu">
											<li><a href="javascript:void(0)"> <span
													class="menu-text">level 4</span> <span class="selected"></span>
											</a></li>
											<li><a href="javascript:void(0)"> <span
													class="menu-text">level 4</span> <span class="selected"></span>
											</a></li>
										</ul></li>
									<li><a href="javascript:void(0)"> <span
											class="menu-text">level 3</span> <span class="selected"></span>
									</a></li>
									<li><a href="javascript:void(0)"> <span
											class="menu-text">level 3</span> <span class="selected"></span>
									</a></li>
									<li><a href="javascript:void(0)"> <span
											class="menu-text">level 3</span> <span class="selected"></span>
									</a></li>
								</ul></li>
						</ul></li>
				</ul>
			</aside>
			<!--aside left menu end-->


			<!--start main content-->
			<%@ include file="../include/menu.jsp" %>
	<h2>상품목록</h2>
	<c:if test="${sessionScope.adminId != null}">
		<button type="button" id="btnAdd">상품등록</button><br>
	</c:if>
	
	
	<!-- <form action="/sale/report" method="post" name="frm" id="frm"> -->
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<input type="hidden" id="pageNum" name="pageNum" value="${pageMaker.cri.pageNum}" />
	<input type="hidden" id="amount" name="amount" value="${pageMaker.cri.amount eq null?10:pageMaker.cri.amount}" />
		
	<!-- Content Row -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
		</div>
		<div class="card-body">
			<div class="row" style="margin: 0 auto;">
				<span>대분류:<select class="borRadi" name="category1" id="category1">
						<c:if test="${criteria.selCate eq null}">
							<option value="all" selected>전체</option>
							<c:forEach items="${cateList1 }" var="cate1">
								<option value="${cate.category1 }">${cate1.category1 }</option>
							</c:forEach>
						</c:if>
						<c:if test="${criteria.selCate ne null}">
							<option value="all"
								${criteria.selCate eq 'all'?'selected':''}>전체</option>
							<c:forEach items="${cateList }" var="cate">
								<c:if test="${criteria.selCate ne 'all'}">
									<option value="${cate.category }"
										${criteria.selCate eq cate.category?'selected':''}>${cate.category }</option>
								</c:if>
								<c:if test="${criteria.selCate eq 'all'}">
									<option value="${cate.category }">${cate.category }</option>
								</c:if>
							</c:forEach>
						</c:if>
				</select></span>
				<span>소분류:<select class="borRadi" name="category1" id="category1">
						<c:if test="${criteria.selCate eq null}">
							<option value="all" selected>전체</option>
							<c:forEach items="${cateList1 }" var="cate1">
								<option value="${cate.category1 }">${cate1.category1 }</option>
							</c:forEach>
						</c:if>
						<c:if test="${criteria.selCate ne null}">
							<option value="all"
								${criteria.selCate eq 'all'?'selected':''}>전체</option>
							<c:forEach items="${cateList }" var="cate">
								<c:if test="${criteria.selCate ne 'all'}">
									<option value="${cate.category }"
										${criteria.selCate eq cate.category?'selected':''}>${cate.category }</option>
								</c:if>
								<c:if test="${criteria.selCate eq 'all'}">
									<option value="${cate.category }">${cate.category }</option>
								</c:if>
							</c:forEach>
						</c:if>
				</select></span>
				 <span>상품:<select class="borRadi" name="selProd" id="selProd">
				 <c:if test="${criteria.selCate eq null}">
							<option value="all" selected>전체</option>
							<c:forEach items="${cateList1 }" var="cate1">
								<option value="${cate.category1 }">${cate1.category1 }</option>
							</c:forEach>
						</c:if>
				</select></span> 
				
				
				<span><select name="dataTable_length"
					aria-controls="dataTable" style="width:55px;" id="selAmount" name="selAmount" 
					class="custom-select custom-select-sm form-control form-control-sm">
					<option value="10" ${pageMaker.cri.amount == 10?'selected':''}>10</option>
					<option value="25" ${pageMaker.cri.amount == 25?'selected':''}>25</option>
					<option value="50" ${pageMaker.cri.amount == 50?'selected':''}>50</option>
					<option value="100" ${pageMaker.cri.amount == 100?'selected':''}>100</option></select></span>
					<span><a href="#" class="btnRound" onclick="searchSale();">검색</a></span>
			</div>
		</div>
	</div>
	
			<section id="main-content">
				<div class="space-30"></div>
				<div class="container">

					<div class="row">

						<div class="col-md-12">
							<div class="panel">
								<header class="panel-heading">
									<h2 class="panel-title">상품 조회</h2>
								</header>
								<span><a href="#" class="btnRound"
									onclick="searchSale();">검색</a></span>
								<div class="panel-body">
									<table id="datatable"
										class="table table-striped dt-responsive nowrap">
										<thead>
											<tr>
												<th>대분류</th>
												<th>소분류</th>
												<th>상품명</th>
												<th>상세설명</th>
												<th>가격</th>
												<th>칼로리</th>
												<th>제조사</th>
												<th></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="row" items="${list}">
		<tr>
			<td>
				${row.productId}
			</td>
			<td>${row.productCate1 }</td>
			<td>${row.productCate2 }</td>
			<td align="center">
				<a href="${path}/shop/product/detail/${row.productId}">${row.productName}</a><br>
				<a href="${path}/shop/product/edit/${row.productId}">[상품편집]</a>
			</td>
			<td>${row.productDesc}</td>
			<td>
				<fmt:formatNumber value="${row.productPrice}" pattern="###,###,###"/>
			</td>
			<td>
				${row.productKcal} kcal
			</td>
			<td>
				<a href="https://www.${row.productManufact}.co.kr">${row.productManufact}</a><br>
			</td>
			<td>
				<a href="${path}/shop/product/detail/${row.productId}">
					<img src="${path}/images/${row.productUrl}" width="120ox" height="110px">
				</a>
			</td>
			
			
		</tr>
		</c:forEach>
									</table>
								</div>
								<!--panel body end-->
							</div>
							<!--end panel-->
						</div>
						<!--col end-->
					</div>
					<!--row end-->
				</div>
				<!--container end-->

				<!--footer start-->
				<div class="footer">
					<div class="row">
						<div class="col-sm-12">
							<span>&copy; Copyright 2019. spos</span>
						</div>
					</div>
				</div>
				<!--footer end-->
			</section>
			<!--end main content-->
		</div>
	</div>
	<!--end wrapper-->



	<!--Common plugins-->
	<script src="assets/plugins/jquery/dist/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/hoe-nav/hoe.js"></script>
	<script src="assets/plugins/pace/pace.min.js"></script>
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/js/app.js"></script>

	<!-- Datatables-->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/dataTables.responsive.min.js"></script>
	<script>


		$(document).ready(function() {

			$(document).ready(function() {
			$('#datatable').dataTable();
			});
			$("#btnAdd").click(function() {
				location.href = "${path}/shop/product/write.do";
			});
			$("#btnEdit").click(function() {
				location.href = "${path}/shop/product/edit.do";
			});
			$
		});
	</script>

</body>
</html>