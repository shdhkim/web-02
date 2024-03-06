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
<h2>
수강 내역
</h2>
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

<!-- lectures에서 정보를 가지고 온다. -->
<c:forEach var="lectures" items="${lectures}">
<tr>
	<td><c:out value="${lectures.year}" /></td>
	<td><c:out value="${lectures.term}" /></td>
	<td><c:out value="${lectures.title}" /></td>
	<td><c:out value="${lectures.part}" /></td>
  <td><c:out value="${lectures.professor}" /></td>
	<td><c:out value="${lectures.credit}" /></td>
	
</tr>
</c:forEach>

</table>
	
	

</body>
</html>