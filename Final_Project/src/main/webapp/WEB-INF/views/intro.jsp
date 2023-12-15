<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>로그인/회원가입</h1>
    <form action="/join" class="form" method="post">
		<h2 class="form__title">회원가입</h2>
		<input type="text" name="id" placeholder="아이디" class="input" autocomplete="off">
		<input type="password" name="pw" placeholder="패스워드" class="input">
		<input type="text" name="email" placeholder="이메일" class="input" autocomplete="off">
		<input type="submit" class="btn" value="회원가입">
    </form>
    
    <form action="/login" class="form" method="post">
		<h2 class="form__title">로그인</h2>
		<input type="text" name="id" placeholder="아이디" class="input" autocomplete="off">
		<input type="password" name="pw" placeholder="패스워드" class="input" >
		<input type="submit" class="btn" value="로그인">
    </form>
</body>
</html>