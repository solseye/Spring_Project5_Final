<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>
<h1>Edit Form</h1>
<%--@elvariable id="u" type=""--%>
<form:form modelAttribute="u" action="../editok" method="post">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>제목:</td><td><form:input path="title"/></td></tr>
		<tr><td>가수:</td><td><form:input path="writer"/></td></tr>
		<tr><td>노래 길이:</td><td><form:input path="song"/></td></tr>
		<tr><td>앨범:</td><td><form:input path="album"/></td></tr>
		<tr><td>평점:</td><td>
			<form:radiobutton path="rating" id="1" value="1"/>
			<label for="1">1</label>
			<form:radiobutton path="rating" id="2" value="2"/>
			<label for="2">2</label>
			<form:radiobutton path="rating" id="3" value="3"/>
			<label for="3">3</label>
			<form:radiobutton path="rating" id="4" value="4"/>
			<label for="4">4</label>
			<form:radiobutton path="rating" id="5" value="5"/>
			<label for="5">5</label>
			<form:errors path="rating" cssClass="error"/>
		</td></tr>
		<tr><td>노래 장르:</td><td>
			<form:select path="content">
				<form:option value="발라드">발라드</form:option>
				<form:option value="인디">인디</form:option>
				<form:option value="힙합/랩">힙합/랩</form:option>
				<form:option value="팝">팝</form:option>
				<form:option value="kpop">kpop</form:option>
				<form:option value="CCM">CCM</form:option>
				<form:option value="클래식">클래식</form:option>
				<form:option value="재즈">재즈</form:option>
			</form:select>
		</td></tr>
		<tr><td colspan="2"><input type="submit" value="수정하기"/>
			<input type="button" value="취소하기" onclick="history.back()"/></td></tr>
	</table>
</form:form>
</body>
</html>
