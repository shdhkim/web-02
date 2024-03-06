<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
           <!-- docreate로 이동한다. -->
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="attLecture">
		<table class="formtable">
			<tr>
				<td class="label">Year: </td>
				<td><sf:input class="control" type="number"  path="year"  readonly="true"  value="2022"/> <br/> <!-- 수강신청할 때 수강년도와 학기는 2022년 1학기로 고정시킨다 -->
				<sf:errors path="year" class="error"/></td>
			</tr>
			
			
			<tr>
				<td class="label">Term: </td>
				<td><sf:input class="control" type="number" path="term"   readonly="true" value="1" /> <br/>
				<sf:errors path="term" class="error"/>
				</td>
			</tr>
			
	
	
			<tr>
				<td class="label">Code: </td>
				<td><sf:input class="control" type="text" path="code"/> <br/>
			
					<sf:errors path="code" class="error"/>
				</td>
			</tr>
			
			<tr>
				<td class="label">Title: </td>
				<td><sf:input class="control" type="text" path="title"/> <br/>
			
					<sf:errors path="title" class="error"/>
				</td>
			</tr>
			
			<tr>
				<td class="label">Part: </td>
				<td><sf:input class="control" type="text" path="part"/> <br/>
				
					<sf:errors path="part" class="error"/>
				</td>
			</tr>
			
			<tr>
				<td class="label">Credit: </td>
				<td><sf:input class="control" type="text" path="credit"/> <br/>
					
					<sf:errors path="credit" class="error"/>
				</td>
			</tr>
			
				<tr>
				<td class="label">Professor: </td>
				<td><sf:input class="control" type="text" path="professor"/> <br/>
					
					<sf:errors path="professor" class="error"/>
				</td>
			</tr>
			
			<tr>
				 <td></td>
				<td><input type="submit" value="수강 신청"/></td>
			</tr>
		</table>
	</sf:form>

</body>
</html>