<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/template/header.jsp"/>

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
<script>
	var result = "${result}";
	if (result == "1") {
		$("#modalContent").html("가입 승인 되었습니다.");
		$("#modal").modal({
			show : true
		});
	}
	$("#modal").on("hidden.bs.modal", function() {
		location.replace('/emt/index');
	});
</script>