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
			<h1>게시판</h1>
		</div>
		<!-- header end -->

		<!-- content start -->
		<div data-role="content">
			<a href="/test_mbl/sample/egovSampleList.do" data-role="button"
			 data-theme="a" data-ajax="false">Board Page</a><br>
			<a href="/test_mbl/sample/login.do" data-role="button"
			 data-theme="a" data-ajax="false">Login Page</a>
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