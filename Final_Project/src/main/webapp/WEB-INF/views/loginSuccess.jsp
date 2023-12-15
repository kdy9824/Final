<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if (session.getAttribute("loginMember") == null) {
	    response.sendRedirect("");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>로그인 성공</h1>
    <h1>${loginMember.email }</h1>
    <button onclick="location.href='sendemail'">흡연 탐지 시 이메일 전송(버튼으로 임시 구현)</button>
    <button onclick="window.history.back()">Back</button>
</body>
</html>