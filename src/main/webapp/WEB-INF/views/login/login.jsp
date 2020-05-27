<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/template/header.jsp"/>

<body class="hold-transition login-page">

	
	
	<div class="login-box">
		<div class="login-logo">
			<a href="/emt/index"><b>English Mock</b>Test</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body login-page">

			<form method="post">
				<div class="form-group has-feedback">
					<input type="text" name="userId" id="userId" class="form-control"
						placeholder="ID"> <span
						class="glyphicon glyphicon-pencil form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="userPw" id="userPw"
						class="form-control" placeholder="Password"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div>
					<!-- /.col -->
					<div class="social-auth-links text-center">
						<input type="submit" name="Submit"
							class="btn btn-primary btn-block btn-flat" value="로그인">
						
					</div>
					<!-- /.col -->
				</div>
			</form>

			<a href="/emt/findId" class="text-center">아이디 / 비밀번호를 잊으셨나요?ID/</a>
			<a href="/emt/findPw" class="text-center">PW찾기</a><br> 
			<a href="/emt/join/join" class="text-center">회원가입을 안하셨나요? -회원가입</a>
		</div>
		<!-- /.social-auth-links -->
		


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
	
	
<c:choose>
	<c:when test="${msg!=null }">
		<script>
		$("#modalContent").html("${msg}");
		$("#modal").modal({show:true});
		</script>
	</c:when>

	<c:when test="${sessionScope.sid=='admin' }">
		<c:redirect url="/admin/adminMain" />
	</c:when>
	<c:when test="${sessionScope.sid==null }">
	</c:when>
	<c:otherwise>
		<script>
			document.location.href='/emt/index'
		</script>
	</c:otherwise>
</c:choose>
	</body><!-- /.login-box-body -->