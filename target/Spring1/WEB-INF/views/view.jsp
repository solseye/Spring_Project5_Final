<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.spring.board.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
    <script>
        function editPost() {
            var url = window.location.href;
            var id = url.substring(url.lastIndexOf('/') + 1);
            location.href = '../editform/' + id;
        }
    </script>
</head>
<body>
<h1>노래 정보 상세보기</h1>
<%--@elvariable id="u" type=""--%>
<form:form modelAttribute="u" method="post">
    <table id="view">
        <tr><td>제목:</td><td><form:input path="title" readonly="true"/></td></tr>
        <tr><td>가수:</td><td><form:input path="writer" readonly="true"/></td></tr>
        <tr><td>노래 길이:</td><td><form:input path="song" readonly="true"/></td></tr>
        <tr><td>앨범:</td><td><form:input path="album" readonly="true"/></td></tr>
        <tr><td>별점:</td><td><form:input path="rating" readonly="true"/></td></tr>
        <tr><td>노래 장르:</td><td><form:input path="content" readonly="true"/></td></tr>
        <tr><td colspan="2">
            <input type="button" value="목록으로" onclick="history.back()"/>
            <button type="button" onclick="editPost()">수정하기</button></td></tr>
    </table>
</form:form>
</body>
</html>
