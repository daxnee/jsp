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
<title>Login!</title>
<body>
	<input id="userId" type = "text" placeholder="아이디를 입력하세요..!"/>
	<input id="userPassword" type = "password" placeholder="비밀번호를 입력하세요..!">
	<button type = "button" onclick = "doLogin()" >로그인</button>
	<h3>안녕하세요 깃허브 연동 확인 좀 할게요</h3>
	<h3>여기서도 확인 좀 할게요</h3>
	
<script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>	
	
<script type="text/javascript">
	function doLogin(){
		// 바닐라 자바스크립트 (순수 js)
		var userId = document.getElementById('userId').value;
		var userPassword = document.getElementById('userPassword').value;
		console.log(userId);
		console.log(userPassword);
		if(userId !== '' || userPassword !== ''){
			var jsonData ={
					userId : userId,
					userPassword : userPassword
			}
			$.ajax({
		          url : '/login',
		          type : 'POST', 
		          contentType: 'application/json', //서버에 json 타입으로 보낼 예정(요청)
		          dataType: 'json', //서버 결과를 json으로 응답받겠다.
		          data: JSON.stringify(jsonData),
		          success : function(response){
		        	  console.log(response);
		            	if(response){
		            		location.href = "/board";
		            	}
		          } 
		        });
		      }//end
	
		
	}
</script>
</body>
</html>
