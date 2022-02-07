<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션 사용하기
	//
	String user_id = (String)session.getAttribute("user_id");
	String user_name = (String)session.getAttribute("user_name");
	
	//세션 유효기관 확인
	int time = session.getMaxInactiveInterval();
	
	//특정세션 삭제
	session.removeAttribute("user_name");
	
	//모든세션 무효화
	session.invalidate();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	세션에저장된id:<%=user_id %><br>
	세션에저장된name:<%=user_name %><br>
	세션유효기간:<%=time %>

</body>
</html>