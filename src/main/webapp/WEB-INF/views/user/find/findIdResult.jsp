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

			<div class="form-group has-feedback">
				해당 메일로 가입되어 있는 아이디는<br>
		<ul>
				<c:forEach var="temp" items="${idList }" varStatus="status">
		
		<li>${temp.userId }</li>
				</c:forEach>
				</ul>
			입니다.
			</div>
			<a href="/emt/findPw" class="text-center">PW찾기</a>
			<br><a href="/emt/login/login" class="text-center">로그인</a>
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
</body>
<!-- /.login-box-body -->