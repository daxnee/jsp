<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study!</title> <!-- 홈페이지 이름 -->
</head>
<body>
	<h1>Hello World!!!!</h1>
	 <h3>${name}</h3>
	 <h3>${backNumber}</h3> <!-- key값 입력하면 웹에서 value가 나온다 -->
	 <!-- c:if : jstl 문법 
			if는 있고 else는 없음-->
		<!-- 숫자 비교 -->
	<c:if test="${backNumber == 7}"> <!-- 만약 backNumber가 5라면 h4 실행 -->	
		<h4>대한민국 만세!</h4>
	</c:if>
	
		<!-- 문자 비교 -->
	<c:if test="${name.equals('손흥민')}">
		<h4>코리아 만세!</h4>
	</c:if>
	
	
	
	<!-- if else를 구현하고 싶을 때 -->
	<c:choose>
		<c:when test="${size < 100}">
		 	<h4>사이즈는 100입니다.</h4>
		</c:when>
		
		<c:otherwise> 
			<h4>사이즈는 100이 아닙니다.</h4>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
		<c:when test="${size < 100}">
		 	<h4>사이즈는 100미만입니다.</h4>
		</c:when>
		
		<c:when test="${size < 200 && size >= 100}"> 
			<h4>사이즈는 200 미만입니다.</h4>
		</c:when>
		
		<c:otherwise> 
			<h4>사이즈는 200 이상입니다.</h4>
		</c:otherwise>
	</c:choose>

	
	<!-- jsp 반복문 -->
		<c:forEach items= "${wsgList}" var = "str">
			<h4>${str}</h4>
		</c:forEach>
		
		<c:forEach items= "${actor}" var = "item">
			<h4>${item.age}, ${item.name}</h4>
		</c:forEach>
		
		
		<c:forEach items="${mapList}" var = "item">
			<h4>${item.no}</h4>
		</c:forEach>
		
		<h1>${mapList[0].no}</h1>
		
		
		
	
	
	
</body>
</html>