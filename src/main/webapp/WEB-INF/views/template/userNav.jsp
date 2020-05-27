<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="main-header">
	<nav class="navbar navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<a href="/emt/index" class="navbar-brand"><b>English</b>Mock
					Test</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/emt/user/test/mockTest">토익스피킹 모의고사</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">파트별문제풀기 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/emt/user/part/part1">Part1</a></li>
							<li><a href="/emt/user/part/part2">Part2</a></li>
							<li><a href="/emt/user/part/part3">Part3</a></li>
							<li><a href="/emt/user/part/part4">Part4</a></li>
							<li><a href="/emt/user/part/part5">Part5</a></li>
							<li><a href="/emt/user/part/part6">Part6</a></li>
						</ul></li>
					<li><a href="/emt/user/grammar/userGrammar">문법문제</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">게시판 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/emt/notice">공지사항</a>
							<li><a href="/emt/board">문제공유</a>
						</ul></li>
					<c:if test="${sid=='admin' }">
						<li><a href="/emt/admin/adminMain">관리자페이지</a></li>
					</c:if>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
			<!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">

					<c:choose>
						<c:when test="${sessionScope.sid==null }">
							<li><a href="/emt/login/login"> 로그인 </a></li>
							<li><a href="/emt/join/join"> 회원가입 </a></li>
							<!-- 회원가입 -->
						</c:when>
						<c:otherwise>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sid }</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/user/review/userReview?sid=${sid }">복습</a></li>
									<li><a href="/emt/user/score/userScore">문법점수</a></li>
									<li><a
										href="/emt/user/member/userMemberList?userId=${sid }">정보수정</a></li>
									<li id="logout"><a>로그아웃</a></li>
								</ul></li>
							<!-- 회원가입 -->
						</c:otherwise>
					</c:choose>

				</ul>
			</div>
			<!-- /.navbar-custom-menu -->
		</div>
		<!-- /.container-fluid -->
	</nav>
</header>