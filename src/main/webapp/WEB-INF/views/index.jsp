<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/template/header.jsp"/>
<jsp:include page="/WEB-INF/views/template/userNav.jsp"/>

<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
	

	<div class="wrapper">
		
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header"></section>

				<!-- Main content -->
				<section class="content">
					<!-- 이미지 슬라이드 -->
					<div class="box box-info">
						<!-- /.box-header -->
						<div class="box-body">
							<div class="box-body">
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators" style="float: right">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"
											class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"
											class=""></li>
									</ol>
									<div class="carousel-inner">
										<div class="item active">
											<img src="<c:url value="/img/1.jpg"/>" alt="First slide"
												style="margin-left: auto; margin-right: auto;">
											<div class="carousel-caption">First Slide</div>
										</div>
										<div class="item">
											<img src="<c:url value="/img/2.jpg"/>" alt="Second slide"
												style="margin-left: auto; margin-right: auto;">
											<div class="carousel-caption">Second Slide</div>
										</div>
										<div class="item">
											<img src="<c:url value="/img/3.jpg"/>" alt="Third slide"
												style="margin-left: auto; margin-right: auto;">
											<div class="carousel-caption">Third Slide</div>
										</div>
									</div>
									<a class="left carousel-control"
										href="#carousel-example-generic" data-slide="prev"> <span
										class="fa fa-angle-left"></span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" data-slide="next"> <span
										class="fa fa-angle-right"></span>
									</a>
								</div>
							</div>
							<!-- /.box-body -->
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->

					</div>
					<!-- 두번째 꺼 -->
					<div class="row">
						<div class="col-md-6">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">최근 공지사항</h3>
									<div class="box-tools pull-right">

									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div id="noticeView" class="table-responsive"></div>
									<!-- /.table-responsive -->
								</div>
								<!-- /.box-body -->
							</div>
						</div>
						<!-- 두번째꺼 -->

						<!-- 두번째 꺼 -->
						<div class="col-md-6">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">최근 게시판 목록</h3>
									<div class="box-tools pull-right">

									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div id="boardView" class="table-responsive"></div>
									<!-- /.table-responsive -->
								</div>
								<!-- /.box-body -->
							</div>
						</div>
						<!-- 두번째꺼 -->
					</div>

				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
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
	<script src="<c:url value="/js/index/indexNotice.js"/>"></script>
	<script src="<c:url value="/js/index/indexBoard.js"/>"></script>
	<script src="<c:url value="/js/logout.js"/>"></script>
	
	<c:choose>
	<c:when test="${loginMsg!=null }">
		<script>
		
		$("#modalContent").html("${loginMsg}");
		$("#modal").modal({show:true});
		
		<%session.removeAttribute("loginMsg");%>
			
		</script>
	</c:when>
</c:choose> 
<c:choose>
	<c:when test="${adminMsg!=null }">
		<script>
		$("#modalContent").html("${adminMsg}");
		$("#modal").modal('show');
		
		<%session.removeAttribute("adminMsg");%>
			
		</script>
	</c:when>
</c:choose>

<script>
	$("#modal").on("hidden.bs.modal", function(){
		document.location.href="/emt/login/login";
	});
</script>