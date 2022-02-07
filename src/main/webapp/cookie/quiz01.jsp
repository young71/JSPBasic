<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Date클래스를 이용해서 이 페이지에 접근한시간을 xxxx년xx월xx일 형태로 생성
	//show라는 이름으로 쿠키를 생성
	//quiz01_ok.jsp에 넘겨서 이 쿠키를 화면에 출력.(만약 쿠키가 없다면 출력하지 않아도 됩니다.)
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년mm월dd일");
	String now = sdf.format(date);
	
	//쿠키생성(이름, 값)
	Cookie cookie = new Cookie("show", now);
	cookie.setMaxAge(1800); //30분
	responese.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>