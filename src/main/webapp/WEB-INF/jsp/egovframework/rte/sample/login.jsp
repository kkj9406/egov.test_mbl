<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>게시판 for Mobile</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- eGovFrame Common import -->
<link rel="stylesheet"
	href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.1.1.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.1.1.css" />" />
<script type="text/javascript"
	src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.7.1.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.1.1.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.1.1.js" />"></script>
</head>

<body>

	<!-- page start -->
	<div data-role="page" data-theme="a">

		<!-- header start -->
		<div data-role="header">
			<h1>게시판 로그인</h1>
		</div>
		<!-- header end -->

		<!-- content start -->
		<div data-role="content">
			<form:form commandName="account"
				action="/test_mbl/sample/loginProcess.do">
				<!-- form 속성 설명 -->
				<!-- commandName은 vo객체를 말한다. form tag를 사용한 부분과의 매핑을 위해 필요한 옵션. -->
				<!-- vo에서 regUser라는 변수가 있다면 form tag안에서 regUser에 입력을 받는경우
				알아서 setter를 사용하고 수정시 또한 알아서 getter를 사용한다. -->
				<!-- action은 form에서 submit이 일어날 경우 이동할 경로이다. -->
				아이디 : <input type=text name="regUser"> 패스워드: <input
					type=password name="password">
				<input type=submit value="로그인" data-ajax="false">
			</form:form>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div data-role="footer">
			<h4>Pilot Project</h4>
		</div>
		<!-- footer end -->

	</div>
	<!-- page end -->

</body>

</html>