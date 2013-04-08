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
			<h1>로그인 성공</h1>
		</div>
		<!-- header end -->

		<!-- content start -->
		<div data-role="content">
			<!-- loginController에서 setattribute를 통해 UserAccount에 set한 regUser로
			계정의 regUser로 접근하여 로그인 성공 메세지를 출력한다. -->
			${sessionScope.UserAccount.regUser} 님은 로그인에 성공했습니다. <br />
			<!-- egovSampleList.do로 이동하는 링크 -->
			<a href="/test_mbl/sample/egovSampleList.do" data-ajax="false">게시판으로 가기</a>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div data-role="footer">
			<h4>footer</h4>
		</div>
		<!-- footer end -->

	</div>
	<!-- page end -->

</body>

</html>