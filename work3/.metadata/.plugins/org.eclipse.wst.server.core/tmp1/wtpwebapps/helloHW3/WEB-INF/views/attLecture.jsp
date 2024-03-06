<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학기별 이수 학점 조회하기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>

<h2>학기별 이수 학점 조회하기</h2>
<table border=1>



<tr>
	<th>년도</th>
	<th>학기</th>
	<th>취득 학점</th>
	<th>상세보기</th>
</tr>
<c:set var="sum" value="0"/>         <!-- 총계 출력을 위해 변수를 생성한다. -->
<c:forEach var="lectures" items="${lectures}">

	<tr>
		<td><c:out value="${lectures.year}" /></td>
		<td><c:out value="${lectures.term}" /></td>
		<c:set var="sum" value="${sum+lectures.credit}"/> <!-- 총계를 계산한다. -->
		<td><c:out value="${lectures.credit}" /></td>
		<td>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<a href="viewLecture?year=<c:out value="${lectures.year}"/>&term=<c:out value="${lectures.term}"/>">조회</a></td>
	</tr>
</c:forEach>
<tr>
	<td>총계</td>
	<td></td>
	<td ><c:out value="${sum}"/></td>
	<td></td>
</tr>

</table>	
	

</body>
</html>