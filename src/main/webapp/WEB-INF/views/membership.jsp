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
<title>spos - join membership</title>

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
<link href="resources/plugins/iCheck/custom.css" rel="stylesheet">
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
<body>

	<div class="page-center">
		<div class="page-center-in">
			<form class="sign-box" id="joinForm" role="form" action="/membership" method="post">
				<div class="sign-avatar">
					<img src="resources/images/avtar-9.png" alt="" class="img-circle">
				</div>
				<header class="sign-title">회원가입</header>

				<div class="form-group-lg">
					<input type="text" class="form-control-ml-5" id="user_id" name="user_id"
						placeholder="ID">
				
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="user_pw" name="user_pw"
						placeholder="Password">

				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="user_repw" name="user_repw"
						placeholder="RepeatPassword">

				</div>

				<div class="form-group">
					<input type="text" class="form-control" id="user_name" name="user_name"
						placeholder="Name">

				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="user_email" name="user_email"
						placeholder="E-Mail">
				</div>

				<div class="form-group">
					<input type="text" class="form-control" id="user_phonenum" name="user_phonenum"
						placeholder="Phone">
				</div>

				<button type="button" id="joinBtn" class="btn btn-success rounded btn-lg">가입완료</button>
				<button type="button" onclick="history.go(-1);" class="btn btn-danger rounded btn-lg">취소</button>
				
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<hr>
			</form>

		</div>
		<!--page center in-->
	</div>
	<!--page center-->

	<!--Common plugins-->
	<script src="resources/plugins/jquery/dist/jquery.min.js"></script>
	<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/plugins/hoe-nav/hoe.js"></script>
	<script src="resources/plugins/pace/pace.min.js"></script>
	<script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/js/app.js"></script>
	<!-- iCheck -->
	<script src="resources/plugins/iCheck/icheck.min.js"></script>
	<script>

	$(document).ready(function(e){

		var formObj = $("form[role='form']");
		$("#joinBtn").on("click", function(e){
			  e.preventDefault();
			if ($("#USER_PW").val() !== $("#USER_REPW").val()) {
				alert("비밀번호가 다릅니다.");
				$("#USER_PW").val("").focus();
				$("#USER_REPW").val("");
				return false;
			} else if ($("#USER_PW").val().length < 5) {
				alert("비밀번호는 5자 이상으로 설정해야 합니다.");
				$("#USER_PW").val("").focus();
				return false;
			} else if ($("#USER_NAME").val() == 0 || $("USER_NAME").val() == '') {
				alert("이름을 입력하세요.");
				$("#USER_NAME").val("").focus();
				return false;
			} 
			else if ($("#USER_EMAIL").val() == 0 || $("USER_EMAIL").val() == '') {
				alert("이메일을 입력하세요.");
				$("#USER_EMAIL").val("").focus();
				return false;
			} 
			else if ($("#USER_PHONENUM").val() == 0 || $("USER_PHONENUM").val() == '') {
				alert("핸드폰 번호를 입력하세요.");
				$("#USER_PHONENUM").val("").focus();
				return false;
			} 
			formObj.submit();
		});
			
//
			/* $("#id_check").on("click", function(e){
				var uid = $("#USER_ID").val();
				if (result == 1) {
					
				}
				
			}); */
		});
	</script>
</body>
</html>
