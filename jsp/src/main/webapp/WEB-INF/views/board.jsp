<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- core : otherwise, choose, when 사용가능한 기능 / 
prefix="c" 설정하면 앞에 'c:' 로 붙여줘야 한다.-->

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- fn : function 함수 사용하려면 위 태그가 필요함 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
	<button type = "button" onclick = "doLogout()">로그아웃</button>

	<!-- 문제 :  테이블에 데이터 넣기  -->
	<h1>${userId}님 환영합니다!</h1>
	<input id="userNo" type = "hidden" value="${userNo}"/> <!-- user번호 같은 pk는 hidden에 숨겨서 value에 담는다-->
	<table>
		<thead>
			<tr>
			    <th>Company</th>
			    <th>Contact</th>
			    <th>Country</th>
			    <th>Country꼬꼬</th>
	 		</tr>
		</thead>
	 	<tbody> <!-- length()함수가 fn에 있는 것임 --> <!-- list의 길이가 0이상이라면  -->
	 		<c:choose>
	 			<c:when test="${fn:length(data.list)>0}"> 
					<c:forEach items="${data.list}" var="item">
				 		<tr>
						    <td>${item.Company}</td>
						    <td>${item.Contact}</td>
						    <td>${item.Country}</td>
		  				</tr>
					</c:forEach>
	 			</c:when>
	 			<c:otherwise>
	 					<tr>
						   <td colspan="3">데이터가 없습니다.</td>
		  				</tr>
	 			</c:otherwise>
	 		</c:choose>
			
	 	</tbody>
	</table>
	<script type="text/javascript">
	function doLogout(){
		location.href = "/logout";
	}
	</script>
</body>
</html>