<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃
	//session.removeAttribure("user_id");
	//session.removeAttribure("user_nick");
	
	session.invalidate();
	response.sendRedirect("session_login.jsp");
%>