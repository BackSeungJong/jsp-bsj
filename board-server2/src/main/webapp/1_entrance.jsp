<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY BOARD</title>
</head>
<body>
	<%
	UserDAO dao = UserDAO.getInstance();
	dao.LOG="";
	dao.getUser();
	%>
    <h1>MY BOARD</h1>
    <form>
       <input type="button" id="login" value="로그인">
        <input type="button" id="join"  value="회원가입">
    </form>

    <script>
    
        document.querySelector('#login').addEventListener('click', e =>{
            location.href = '2_login.jsp';
        });

        document.querySelector('#join').addEventListener('click', e =>{
            location.href = '4_join.jsp';
        });
    </script>
</body>
</html>