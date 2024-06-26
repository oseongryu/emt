<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/template/header.jsp"/>

<body class="hold-transition skin-blue layout-top-nav">

	<!-- 작은 모달 -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader">
		<button type="button"  class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="modalTitle">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent">
			...
	      </div>
	      <div class="modal-footer" id="modalBtns">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->
	
	<!-- 로그아웃용 작은 모달 -->
	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header" id="modalHeader1">
		<button type="button" class="close" data-dismiss="modal">
		<span aria-hidden="true">×</span>
		<span class="sr-only">Close</span>
		</button>
		<h4 class="modal-title" id="modalTitle1">EMT 알림메시지</h4>
	      </div>
	      <div class="modal-body" id="modalContent1">
			로그아웃 되었습니다.
	      </div>
	      <div class="modal-footer" id="modalBtns1">
		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div><!-- 모달 END -->

	<div class="wrapper">
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
					<div class="collapse navbar-collapse pull-left"
						id="navbar-collapse">
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
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">

							<c:choose>
								<c:when test="${sessionScope.sid==null }">
									<li><a href="/emt/login/login"> 로그인 </a></li>
									<li><a href="/emt/join/join"> 회원가입 </a>
									</li>
									<!-- 회원가입 -->
								</c:when>
								<c:otherwise>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sid }</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/emt/user/review/userReview?sid=${sid }">복습</a></li>
									<li><a href="/emt/user/score/userScore">문법점수</a></li>
									<li><a href="/emt/user/member/userMemberList?userId=${sid }">정보수정</a></li>
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
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header"></section>



				<!-- Main content -->
				<section class="content">

					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">공지사항</h3>
							<div class="box-tools pull-right">

							</div>
						</div>

						<!-- /.box-header -->
						<div class="box-body">
							<div id="noticeView" class="table-responsive">
								<table class="table no-margin">
									<thead>
										<tr>

											<th>게시판번호</th>
											<th>제목</th>
											<th>날짜</th>
											<th>조회수</th>
											<th>아이디</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="boardDetailView.html">회원가입이 안되시는
													분들 전달사항</a></td>
											<td>2016-12-1</td>
											<td>0</td>
											<td>admin</td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="boardDetailView.html">금일 서버점검 안내</a></td>
											<td>2016-11-20</td>
											<td>0</td>
											<td>admin</td>
										</tr>
										<tr>
											<td>3</td>
											<td><a href="boardDetailView.html">게시판 이용 안내</a></td>
											<td>2016-11-9</td>
											<td>0</td>
											<td>admin</td>
										</tr>
										<tr>
											<td>4</td>
											<td><a href="boardDetailView.html">토익스피킹 이용안내</a></td>
											<td>2016-10-16</td>
											<td>0</td>
											<td>admin</td>
										</tr>
										<tr>

											<td>5</td>
											<td><a href="boardDetailView.html">서버점검 시간 안내 12:00~
													13:00</a></td>
											<td>2016-04-04</td>
											<td>0</td>
											<td>admin</td>
										</tr>
										<tr>

											<td>6</td>
											<td><a href="boardDetailView.html">공지좀 봐주세요 아직도
													조회수0?</a></td>
											<td>2016-04-04</td>
											<td>0</td>
											<td>admin</td>
										</tr>
										<tr>

											<td>7</td>
											<td><a href="boardDetailView.html">저희 사이트를 방문해주셔서
													감사...</a></td>
											<td>2016-04-04</td>
											<td>0</td>
											<td>admin</td>
										</tr>
									</tbody>
								</table>

							</div>
							
							<!-- 페이징 링크 -->
							<div id="pages" class="box-footer clearfix">
								<ul class="pagination pagination-sm no-margin pull-right">
									<li><a href="#">«</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">»</a></li>
								</ul>
							</div>
							
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer navbar-fixed-bottom">
				<div class="container">
					<div class="pull-right hidden-xs">
						<b>Version</b> 1.0.0
					</div>
					<strong>Copyright &copy; 2016 <a
						href="/emt/index">English Mock Test</a>
					</strong> All rights reserved.
				</div>
			</footer>
	</div>
	<!-- ./wrapper -->

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
	<!-- logout.js -->
	<script src="<c:url value="/js/logout.js"/>"></script>
	<!-- noticeList.js 링크 -->
	<script src="<c:url value="/js/board/noticeList.js?v=2"/>"></script>
</body>
</html>