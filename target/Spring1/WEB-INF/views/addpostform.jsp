<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<h1>플레이리스트에 노래 추가</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
<tr><td>가수:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>길이:</td><td><input type="text" name="song"/></td></tr>
<tr><td>앨범:</td><td><input type="text" name="album"/></td></tr>
<tr><td>평점:</td><td>
    <input type="radio" id="1" name="rating" value="1">
    <lable for="1">1</lable>
    <input type="radio" id="2" name="rating" value="2">
    <lable for="2">2</lable>
    <input type="radio" id="3" name="rating" value="3">
    <lable for="3">3</lable>
    <input type="radio" id="4" name="rating" value="4">
    <lable for="4">4</lable>
    <input type="radio" id="5" name="rating" value="5">
    <lable for="5">5</lable>
</td></tr>
    <tr><td>장르:</td><td>
        <select id="content" name="content">
            <option value="발라드">발라드</option>
            <option value="인디">인디</option>
            <option value="힙합/랩">힙합/랩</option>
            <option value="팝">팝</option>
            <option value="kpop">kpop</option>
            <option value="CCM">CCM</option>
            <option value="클래식">클래식</option>
            <option value="재즈">재즈</option>
        </select>
    </td></tr>
</table>
    <button type="button" onclick="history.go(-1);">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>