<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<h1>2022-1 수강신청 결과 조회 </h1>
<hr>
<table border=1>
<tr>
<td>년도</td>
<td>학기</td>

<td>교과목명</td>
<td>교과구분</td>
<td>담당교수</td>
<td>학점</td>

</tr>
<!-- lectures2022에서 정보를 가지고 온다. -->
<c:forEach var="lectures2022" items="${lectures2022}">
<tr>
<td ><c:out value="${lectures2022.year}" /></td>
<td ><c:out value="${lectures2022.term}" /></td>
<td ><c:out value="${lectures2022.title}" /></td>
<td ><c:out value="${lectures2022.part}" /></td>
<td ><c:out value="${lectures2022.professor}" /></td>
<td ><c:out value="${lectures2022.credit}" /></td>

</tr>
</c:forEach>
</table>
	

</body>
</html>