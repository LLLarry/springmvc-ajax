<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/1
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <!-- jQuery and JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
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
                登录界面
            </div>
            <div class="col-md-3 col-md-offset-6 text-right">

            </div>
        </div>
    </div>
</nav>
<div class="container">
    <p class="text-center text-danger m-2">${msg}</p>
    <form action="/handlelogin" method="post">
        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" required class="form-control" id="username" placeholder="請輸入用户名" name="username">
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="text" required class="form-control" id="password" placeholder="請輸入密码" name="password">
        </div>
        <button type="submit" class="btn btn-default w-100 d-block btn-primary">提交</button>
    </form>
</div>
</body>
</html>
