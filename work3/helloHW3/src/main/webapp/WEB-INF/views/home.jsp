<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css"> <!-- 폰트를 바꾸기 위해 css를 적용한다 -->
</head>
<body >

<img src="https://info.hansung.ac.kr/fuz/common/img/common/logo.gif"> <!-- 한성대 종합정보시스템 이미지를 첨부한다 -->

<br><br>
	안녕하세요 한성대 종합정보시스템입니다
<br><br>
	<p> <a href="${pageContext.request.contextPath}/attLecture"> 학기별 이수 학점 조회 </a></p>
	<p> <a href="${pageContext.request.contextPath}/registerLecture"> 수강 신청 하기 </a></p>
	<p> <a href="${pageContext.request.contextPath}/viewRegisterLecture"> 수강 신청 조회하기 </a></p>
	
	<br>
	<br>
	<br>
	주요 연락처
	<hr>
학사지원팀
760-4219
학적, 교무, 성적, 졸업, 전자출결, 교직, 휴학, 복학
<br>
학생장학팀
760-4221
장학
<br>
취업지원팀
760-4295
교육장학금, 365캠퍼스, 취업지원, 진로상담
<br>
창업지원팀
760-5610
학생창업
<br>
교육혁신지원팀
760-5816
스마트자기관리시스템, 학생이력관리시스템, 비교과포인트, 지도교수
<br>
교육역량개발센터
760-4248
한성E-CLASS(블랙보드)
<br>
학생상담센터
760-4171
학생상담센터
<br>
정보화팀
760-4291
홈페이지, 전산처리, Wi-Fi, 네트워크, 한성웹메일, 오피스365
<br>
시설지원팀
760-4232
시설, 건축, 안전
<br>
장애학생지원센터
760-4363
장애학생지원
<br><br> <!-- 로그아웃 기능을 넣는다. -->
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()"> Logout </a>
	</c:if>

	<form id="logout" action="<c:url value="/logout"/>" method="post" >
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
	
</body>
</html>
