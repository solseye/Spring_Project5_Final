<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.spring.board.BoardDAO, com.spring.board.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id) {
            let a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
    <script>
        function filterResults() {
            var searchFieldIndex = document.getElementsByName("searchField")[0].selectedIndex;
            var searchText = document.getElementsByName("searchText")[0].value.toLowerCase();

            var table = document.getElementById("list");
            var tr = table.getElementsByTagName("tr");

            for (var i = 1; i < tr.length; i++) {
                var td = tr[i].getElementsByTagName("td")[searchFieldIndex];
                if (td) {
                    var textValue = td.textContent || td.innerText;
                    if (textValue.toLowerCase().indexOf(searchText) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>
</head>
<body>
<h1>플레이리스트</h1>
<div class="container">
    <div class="row">
        <form method="post" name="search">
            <select class="form-control" name="searchField" onchange="filterResults()">
                <option value="0">id</option>
                <option value="1">제목</option>
                <option value="2">가수/그룹</option>
                <option value="3">노래 길이</option>
                <option value="4">앨범 이름</option>
                <option value="5">별점</option>
                <option value="6">노래 장르</option>
            </select>
            <input type="text" class="form-control" placeholder="검색어 입력" name="searchText" onkeyup="filterResults()" maxlength="100">
        </form>
    </div>
</div>
</form>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>제목</th>
        <th>가수/그룹</th>
        <th>노래 길이</th>
        <th>앨범 이름</th>
        <th>별점</th>
        <th>노래 장르</th>
        <th>등록 일자</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td><a href="view/${u.getSeq()}">${u.getTitle()}</a></td>
            <td>${u.getWriter()}</td>
            <td>${u.getSong()}</td>
            <td>${u.getAlbum()}</td>
            <td>${u.getRating()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform/${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<button type="button" onclick="location.href='add'">노래 추가</button>
</body>
</html>