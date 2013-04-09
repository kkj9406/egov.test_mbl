<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<c:set var="registerFlag" value="${empty sampleVO.id ? '등록' : '수정'}" />
<c:set var="userId" value="${sampleVO.regUser}" />
<c:set var="isUserSame"
	value="${userId==sessionScope.UserAccount.regUser ? 'true' : 'false'}" />
<title>글<c:if test="${isUserSame=='false' }">
		<c:if test="${userId==null}">
			<c:out value="${registerFlag}"></c:out>
		</c:if>
		<c:if test="${userId!=null}">
			<c:out value="보기" />
		</c:if>
	</c:if> <c:if test="${isUserSame=='true' }">
		<c:out value="${registerFlag}" />
	</c:if> for Mobile
</title>
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

<script type="text/javaScript" language="javascript" defer="defer">
		
			/* 글 목록 화면 function */
			function fn_egov_selectList() {
			   	document.detailForm.action = "<c:url value='/sample/egovSampleList.do'/>";
				document.detailForm.submit();		
			}
			
			/* 글 삭제 function */
			function fn_egov_delete() {
		        jConfirm('삭제 하시겠습니까?', 'Pilot Project', 'a', function(confirm) {
			        if(confirm) {
		                document.detailForm.action = "<c:url value='/sample/deleteSample.do'/>";
		                document.detailForm.submit();        					      
			        }
		        });
			}			
			
			/* 글 등록 function */
			function fn_egov_save() {	
				frm = document.detailForm;
		    	frm.action = "<c:url value="${registerFlag == '등록' ? '/sample/addSample.do' : '/sample/updateSample.do'}"/>";
		    	document.detailForm.submit();
			}
			
			/* 로그아웃 function */
			function fn_egov_logout(){
				document.listForm.action = "<c:url value='/sample/logout.do'/>";
			   	document.listForm.submit();
			}
		</script>

</head>

<body>
	<!-- page start -->
	<div data-role="page" data-theme="a">

		<!-- header start -->
		<div data-role="header" data-theme="a">
			<h1>
				글
				<c:if test="${isUserSame=='false' }">
					<c:if test="${userId==null}">
						<c:out value="${registerFlag}"></c:out>
					</c:if>
					<c:if test="${userId!=null}">
						<c:out value="보기" />
					</c:if>
				</c:if>
				<c:if test="${isUserSame=='true' }">
					<c:out value="${registerFlag}" />
				</c:if>
			</h1>
			<a href="javascript:fn_egov_logout();" data-ajax="false" data-icon="delete" class="ui-btn-left">로그아웃</a>
			<a href="<c:url value="javascript:fn_egov_selectList();"/>"
				data-ajax="false" data-icon="grid" class="ui-btn-right">목록</a>
		</div>
		<!-- header end -->

		<!-- content start -->
		<div data-role="content">

			<form:form commandName="sampleVO" name="detailForm">
				<!-- 수정 PART -->
				<c:if test="${registerFlag == '수정'}">
					<div data-role="fieldcontain">
						<label for="id">글번호</label>
						<form:input id="id" path="id" maxlength="10" readonly="true" />
					</div>
					<!-- 같은 id라면 수정가능 -->
					<c:if test="${isUserSame=='true'}">
						<div data-role="fieldcontain">
							<label for="name">제목</label>
							<form:input id="name" path="name" maxlength="30" />
						</div>
						<div data-role="fieldcontain">
							<label for="description">내용</label>
							<form:textarea id="description" path="description" cols="58"
								rows="5" />
						</div>
					</c:if>
					<!-- 다른 id라면 읽기전용 -->
					<c:if test="${isUserSame=='false'}">
						<div data-role="fieldcontain">
							<label for="name">제목</label>
							<form:input id="name" path="name" maxlength="10" readonly="true" />
						</div>
						<div data-role="fieldcontain">
							<label for="description">내용</label>
							<form:textarea id="description" path="description" cols="58"
								rows="5" readonly="true" />
						</div>
					</c:if>
					<div data-role="fieldcontain">
						<label for="regUser">등록자</label>
						<form:input id="regUser" path="regUser" maxlength="10"
							readonly="true" />
					</div>
					<div data-role="fieldcontain">
						<label for="date">등록일</label>
						<form:input id="date" path="date" maxlength="10"
							readonly="true" />
					</div>
				</c:if>
				<!-- 등록 PART -->
				<c:if test="${registerFlag == '등록'}">
					<div data-role="fieldcontain">
						<label for="name">제목</label>
						<form:input id="name" path="name" maxlength="30" />
					</div>
					<div data-role="fieldcontain">
						<label for="description">내용</label>
						<form:textarea id="description" path="description" cols="58"
							rows="5" />
					</div>
					<div data-role="fieldcontain">
						<label for="regUser">등록자</label>
						<form:input id="regUser" value="${sessionScope.UserAccount.regUser}"  path="regUser" maxlength="10"
							readonly="true" />
					</div>
				</c:if>

				<fieldset class="ui-grid-a">
					<c:if test="${registerFlag == '수정'}">
						<c:if test="${isUserSame=='true'}">
							<div class="ui-block-a">
								<a href="javascript:fn_egov_save();" data-role="button"
									data-theme="a"><c:out value='${registerFlag}' /></a>
							</div>
							<div class="ui-block-b">
								<a href="javascript:fn_egov_delete();" data-role="button">삭제</a>
							</div>
							<div class="ui-block-c">
								<a href="javascript:document.detailForm.reset();"
									data-role="button">원래대로</a>
							</div>
						</c:if>
					</c:if>
				</fieldset>

				<c:if test="${registerFlag == '등록'}">
					<div class="ui-block-a">
						<a href="javascript:fn_egov_save();" data-role="button"
							data-theme="a"><c:out value='${registerFlag}' /></a>
					</div>
					<div class="ui-block-c">
						<a href="javascript:document.detailForm.reset();"
							data-role="button">원래대로</a>
					</div>

				</c:if>

				<!-- 검색조건 유지 -->
				<input type="hidden" name="searchCondition"
					value="<c:out value='${searchVO.searchCondition}'/>" />
				<input type="hidden" name="searchKeyword"
					value="<c:out value='${searchVO.searchKeyword}'/>" />
				<input type="hidden" name="pageIndex"
					value="<c:out value='${searchVO.pageIndex}'/>" />

			</form:form>

		</div>
		<!-- content end -->

		<!-- footer start -->
		<div data-role="footer" data-theme="a">
			<h4 class="main">Pilot Project</h4>
		</div>
		<!-- footer end -->

	</div>
	<!-- page end -->
</body>
</html>