<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Assan admin</title>

<!-- Bootstrap -->
<link href="resources/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--side menu plugin-->
<link href="resources/plugins/hoe-nav/hoe.css" rel="stylesheet">
<!-- icons-->
<link href="resources/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="resources/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="resources/plugins/lightbox2/dist/css/lightbox.css"
	rel="stylesheet">
<!--template custom css file-->
<link href="resources/css/style.css" rel="stylesheet">

<script src="resources/js/modernizr.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body hoe-navigation-type="vertical" hoe-nav-placement="left"
	theme-layout="wide-layout">
	<!--start main content-->
	<section id="main-content">
		<div class="space-30"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="panel">
						<div class="panel-body"></div>
						<!--panel body-->
					</div>
					<!--panel-->

				</div>
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-body">
									<div>
										<!-- Nav tabs -->

										<!-- Tab panes -->
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="frnd">
												<div class="row">

													<div role="tabpanel" class="tab-pane" id="settings">
														<form class="form-horizontal" role="form" action="modify"
															method="post">

															<hr>
															<h4>개인정보 수정</h4>

															<div class="form-group">
																<label for="id" class="col-sm-3 control-label">아이디</label>
																<div class="col-sm-7">
																	<input type="text" class="form-control" id="user_id"
																		name="user_id">
																</div>
															</div>

															<div class="form-group">
																<label for="password" class="col-sm-3 control-label">변경
																	할 비밀번호</label>
																<div class="col-sm-7">
																	<input type="password" class="form-control"
																		id="user_pw" name="user_pw">
																</div>
															</div>

															<div class="form-group">
																<label for="address" class="col-sm-3 control-label">비밀
																	번호 확인</label>
																<div class="col-sm-7">
																	<input type="password" class="form-control"
																		id="user_repw" name="user_repw">
																</div>
															</div>

															<div class="form-group">
																<label for="name" class="col-sm-3 control-label">이름</label>
																<div class="col-sm-7">
																	<input type="text" class="form-control" id="user_name"
																		name="user_name">
																</div>
															</div>

															<div class="form-group">
																<label for="email" class="col-sm-3 control-label">이메일</label>
																<div class="col-sm-7">
																	<input type="text" class="form-control" id="user_email"
																		name="user_email">
																</div>
															</div>

															<div class="form-group">
																<label for="phone" class="col-sm-3 control-label">전화번호</label>
																<div class="col-sm-7">
																	<input type="number" class="form-control"
																		id="user_phonenum" name="user_phonenum">
																</div>
															</div>

															<hr>
															<div class="form-group">

																<label for="skills" class="col-sm-3 control-label">사진</label>
																<div class="col-sm-7">
																	<img src="resources/images/avtar-1.jpg" alt="" width="80">
																	<div class="space-20"></div>
																	<input type="file" class="form-control" id="avtar">
																	<p class="help-block">JPEG/PNG 80x80px</p>
																</div>
															</div>
															<div class="form-group">
																<div class="col-sm-offset-3 col-sm-9">
																	<button type="submit" id="Btn"
																		class="btn btn-lg btn-primary rounded">변경 완료</button>
																	<button type="button" onclick="history.go(-1);"
																		class="btn btn-lg btn-warning rounded">취소</button>
																</div>
															</div>
															<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
	</section>
	<!--end main content-->
	</div>
	</div>
	<!--end wrapper-->

	<!--Common plugins-->
	<script src="resources/plugins/jquery/dist/jquery.min.js"></script>
	<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/plugins/hoe-nav/hoe.js"></script>
	<script src="resources/plugins/pace/pace.min.js"></script>
	<script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/js/app.js"></script>
	<!--page script-->
	<script src="resources/plugins/lightbox2/dist/js/lightbox.min.js"></script>

	<script>
        $(document).ready(function(e){

		var formObj = $("form[role='form']");
		$("#Btn").on("click", function(e){
			  e.preventDefault();
			  if ($("#USER_PW").val() !== $("#USER_REPW").val()) {
					alert("비밀번호가 다릅니다.");
					$("#USER_PW").val("").focus();
					$("#USER_REPW").val("");
					return false;
				}
			  formObj.submit();
		
        });
     });
        </script>
</body>
</html>