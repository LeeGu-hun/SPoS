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
        <title>spos - login</title>

        <!-- Bootstrap -->
        <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
        <link href="resources/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
                <form class="sign-box" role="form" method="post" action="/login">
                    <div class="sign-avatar">
                        <img src="resources/images/avtar-2.png" alt="" class="img-circle">
                    </div>
                    <header class="sign-title">스마트 반려동물 급식 시스템</header>
                    <div class="form-group">
                        <input type="text" class="form-control" name="username" placeholder="ID">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <div class="form-group clearfix">
                        <div class="checkbox pull-left">
                            <input type="checkbox" id="myCheckbox" name="myCheckbox" class="i-checks">
                            <label for="myCheckbox">Remember Me </label>
                        </div>
                        <div class="pull-right">
                            <p><a href="#">Reset Password</a></p>
                        </div>
                    </div>
                    <a href="customLogin" id="alogin" class="btn btn-success rounded btn-lg">로그인</a>
                    <hr>
                     <a href="membership">회원가입</a>
                     <br>
                     <a href="home">메인화면으로</a>
                     <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
                </form>
            </div><!--page center in-->
        </div><!--page center-->

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
    $(document).ready(function() {
		$("#alogin").on("click", function(e) {
			e.preventDefault();
		$("form").submit();
		});
	});
        
    </script>
    </body>
</html>
