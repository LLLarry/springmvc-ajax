<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/1
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全部书籍</title>
    <!-- jQuery and JavaScript Bundle with Popper -->
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container" style="margin-top: 15px;">
        <div class="row w-100">
            <div class="col-md-3">
                全部书籍
            </div>
            <div class="col-md-3 col-md-offset-6 text-right">
                <a href="/book/addBook">添加图书</a>
            </div>
        </div>
    </div>
</nav>
    <div class="container">
        <div>
            <div class="row">
                <div class="col-md-6">
                    <a  href="/book/allbooks" type="button" class="btn btn-primary btn-small">显示全部书籍</a>
                </div>
                <div class="col-md-6" style="text-align: right;">
                    <form class="form-inline searchform" action="/book/searchByName" method="post">
                        <input placeholder="请输入书籍名称" value="${bookName}" class="form-control" name="bookName">
                        <button type="submit" class="btn btn-primary btn-small" id="search">搜索</button>
                    </form>
                </div>
            </div>
        </div>
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <th>ID</th>
                <th>书名</th>
                <th>数量</th>
                <th>描述</th>
                <th>编辑</th>
                <th>删除</th>
            </tr>
            <c:forEach items="${list}" var="book">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a class="btn btn-success btn-small" href="/book/editBookAnTo?id=${book.bookID}">编辑</a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-small" href="/book/deleteBook/${book.bookID}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
<script>
    $(function () {
        $('#search').on('click', function (e){
            e = e || window.event
            e.preventDefault()
            var bookName= $('.searchform [name="bookName"]').val().trim()
            $.ajax({
                url: '/book/searchBooksByNameAndAjax',
                data: {
                    bookName
                },
                success: (res) =>{
                    console.log(res)
                },
                success: (err) =>{
                    console.log(err)
                },
            })
        })
    })
</script>
</body>
</html>
