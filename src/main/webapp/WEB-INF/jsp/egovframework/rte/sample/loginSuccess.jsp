<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>로그인 성공</title>
</head>
<body>
<!-- loginController에서 setattribute를 통해 UserAccount에 set한 regUser로
	계정의 regUser로 접근하여 로그인 성공 메세지를 출력한다. -->
			${sessionScope.UserAccount.regUser} 님은 로그인에 성공했습니다. <br />
			<!-- egovSampleList.do로 이동하는 링크 -->
			<a href="/test_mbl/sample/egovSampleList.do">게시판으로 가기</a>
</body>
</html>