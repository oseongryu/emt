<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/template/header.jsp"/>

<body class="hold-transition register-page">


	
	<div class="register-box">
		<div class="register-logo">
			<a href="/emt/index"><b>English Mock</b>Test</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">가입을 환영합니다!!</p>
			<form name="frmJoin" id="frmJoin" method="post">
				<div class="form-group has-feedback">
                <input type="text" name="userId" id="userId" class="form-control" placeholder="ID">
                    <span class="input-group-btn">
                      <button type="button" name="duplbtn" id="duplbtn" class="btn pull-right">중복확인</button>
                    </span>
              </div>
				<div class="form-group has-feedback">
					<input type="email" name="email" id="email" class="form-control"
						placeholder="Email">

				</div>
				<div class="form-group has-feedback">
					<input type="password" name="userPw" id="userPw"
						class="form-control" placeholder="Password">

				</div>
				<div class="form-group has-feedback">
					<input type="password" id="userPwCh" class="form-control"
						placeholder="Retype Password">

				</div>


				<!-- /.col -->
				<div>
					<button type="button" id="join" name="join"
						class="btn btn-primary btn-block btn-flat">가입하기</button>
				</div>
				<!-- /.col -->

			</form>
			<a href="/emt/findId" class="text-center">ID/</a>
			<a href="/emt/findPw" class="text-center">PW찾기</a>
			<br> <a href="/emt/login/login" class="text-center">기존에 가입하신
				회원입니까? - 로그인</a>
		</div>
		<!-- /.form-box -->
	</div>

	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<!-- SlimScroll -->
	<script src="<c:url value="/js/jquery.slimscroll.min.js"/>"></script>
	<!-- FastClick -->
	<script src="<c:url value="/js/fastclick.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/js/app.min.js"/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/js/demo.js"/>"></script>
	<script src="<c:url value="/js/memberJoin.js"/>"></script>
	<!-- /.register-box -->