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
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--side menu plugin-->
<link href="assets/plugins/hoe-nav/hoe.css" rel="stylesheet">
<!-- icons-->
<link href="assets/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/plugins/iCheck/custom.css" rel="stylesheet">
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
<body>

	<div class="page-center">
		<div class="page-center-in">
			<form class="sign-box" id="joinForm" role="form" action="/membership" method="post">
				<div class="sign-avatar">
					<img src="assets/images/avtar-9.png" alt="" class="img-circle">
				</div>
				<header class="sign-title">회원가입</header>

				<div class="form-group-lg">
					<input type="text" class="form-control-ml-5" id="USER_ID" name="USER_ID"
						placeholder="ID">
				
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="USER_PW" name="USER_PW"
						placeholder="Password">

				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="USER_REPW" name="USER_REPW"
						placeholder="RepeatPassword">

				</div>

				<div class="form-group">
					<input type="text" class="form-control" id="USER_NAME" name="USER_NAME"
						placeholder="Name">

				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="USER_EMAIL" name="USER_EMAIL"
						placeholder="E-Mail">
				</div>

				<div class="form-group">
					<input type="text" class="form-control" id="USER_PHONENUM" name="USER_PHONENUM"
						placeholder="Phone">
				</div>

				<button type="button" id="joinBtn" class="btn btn-success rounded btn-lg">가입완료</button>
				<button type="button" onclick="history.go(-1);" class="btn btn-danger rounded btn-lg">취소</button>
				

				<hr>
			</form>

		</div>
		<!--page center in-->
	</div>
	<!--page center-->

	<!--Common plugins-->
	<script src="assets/plugins/jquery/dist/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/hoe-nav/hoe.js"></script>
	<script src="assets/plugins/pace/pace.min.js"></script>
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/js/app.js"></script>
	<!-- iCheck -->
	<script src="assets/plugins/iCheck/icheck.min.js"></script>
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
			} else if ($("#USER_PW").val().length < 2) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
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
