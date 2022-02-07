<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//랜덤 로또번호 만들기
//	/*
	// 1. 스크립트릿에 정수를 저장하는 list선언
	// 2. 1~45까지 랜덤한 정수를 만들고 리스트에 추가
	// 3. 중복되지 않는 숫자 6개를 정하면 되는데
	//	값의 존재여부는 list.contains(값) 로 확인
	// 4. size()가 6이 되면 로또번호가 완성됩니다. (화면에 출력)
	// 5. set 구조를 이용해서도 처리
%>

<%
	ArrayList<Integer> list = new ArrayList<Integer>();
	Random ran = new Random();
	
	while(list.size() < 6){
		
		int num = ran.nextInt(45) +1 ;	
		if( !list.contains(num) ) {
			list.add(num);
		}
		
	}
	HashSet<Integer> set = new HashSet<>(); //중복x
		
	while( set.size() < 6) {
		set.add( ran.nextInt(45) + 1);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=list.toString()%>
	<%=set.toString(s) %>

</body>
</html>