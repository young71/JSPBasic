<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//한글처리
	request.setCharacterEncoding("utr-8");

   String id = request.getParameter("id");
   String pw = request.getParameter("pw"); 
   
   String[] inter = request.getParameterValues("inter");
   
   String major = request.getParameter("major");
   String region = request.getParameter("region");
   String textarea = request.getParameter("textarea");
   
   %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %><br>
	<%=pw %><br>
	<%=Arrays.toString(inter) %><br>    
	<%=major %><br>
	<%=region %><br>
	<%=textarea %><br>
	

</body>
</html>