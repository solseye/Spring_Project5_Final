<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>첫 페이지</title>
    <!-- 스타일 및 기타 메타 태그 -->
</head>
<body>
<div class="title">
    <h1>노래 플레이리스트</h1>
</div>
<br>
<div class="title">

    <form id="loginForm" action="login" method="post">
        <input type="text" name="userId" placeholder="ID"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <button type="submit">Login</button>
    </form>
</div>
<div class="title">
    <% if (request.getAttribute("loginError") != null) { %>
    <p style="color: red;"><%= request.getAttribute("loginError") %></p>
    <% } %>
</div>
<style>
    .title{
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
</style>
</body>
</html>