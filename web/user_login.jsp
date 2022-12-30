<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/11/27
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>用户登录页面</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }

    body {
        background: #5D4157;
        /* fallback for old browsers */
        background: -webkit-linear-gradient(to left, #A8CABA, #5D4157);
        /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to left, #A8CABA, #5D4157);
        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        animation: backdiv 12s infinite;
        background-position: 0% 50%;
        background-size: 400%;
    }

    @keyframes backdiv {
        0% {
            background-position: 0% 50%;
        }

        50% {
            background-position: 100% 50%;
        }

        100% {
            background-position: 0% 50%;
        }
    }

    .title {
        text-align: center;
        padding: 50px 0 20 px;
    }

    .title h1 {
        margin: 0;
        padding: 0;
        color: #fff;
        /* text-transform: uppercase; */
        font-size: 36px;
    }

    .container {
        width: 50%;
        /* height: 400px; */
        margin: 0 auto;
        border: 2 px solid #fff;
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.5);
    }

    .container .left {
        float: left;
        width: 50%;
        height: 533px;
        background: url(./images/宇宙.jpg) -100px;
        background-size: cover;
        box-sizing: border-box;
    }

    .container .right {
        float: right;
        width: 50%;
        /* height: 400px; */
        box-sizing: border-box;
        background: #fff;
    }

    .formBox {
        width: 100%;
        padding: 80px 40px;
        /* height: 400px; */
        background: #fff;
        box-sizing: border-box;
        /* opacity: 0.6; */
    }

    .formBox .p {
        margin: 0;
        padding: 0;
        font-weight: bold;
        color: #a6af13;
    }

    .formBox input {
        width: 100%;
        margin-bottom: 20px;
    }



    .formBox input[type="text"] {
        border: none;
        border-bottom: 2px solid #a6af13;
        outline: none;
        height: 40px;
    }

    .formBox input[type="password"] {
        border: none;
        border-bottom: 2px solid #a6af13;
        outline: none;
        height: 40px;
    }

    .formBox input[type="text"]:focus {
        border-bottom: 2px solid #262626;
    }

    .formBox input[type="password"]:focus {
        border-bottom: 2px solid #262626;
    }

    .formBox input[type="submit"] {
        margin-top: 10px;
        border: none;
        outline: none;
        height: 40px;
        color: #fff;
        background: #262626;
        cursor: pointer;
    }

    .formBox input[type="submit"]:hover {
        background: #a6af13;
    }

    .formBox a {
        font-weight: bold;
        color: #262626;
        font-size: 12px;
    }

    .center {

        text-align: center;
        vertical-align: center;
        align-items: center;
        l
    }

    .center img {
        margin-right: 20px;
    }

    .center a {
        text-align: center;
        font-size: 15px;
        font-family: 楷体;
        vertical-align: center;

    }


</style>
<script>
    window.onload = function init() {
        changed();
        stopback();
    }
    function msg() {
        alert("即将跳转到游客页面，在此页面您只能访问主页！");
        window.open("visitor.html")
    }
    function run() {
        // 获取图片
        var image = document.getElementById("imgId");
        image.src = "checkcodeimg?" + new Date().getTime();
    }
    function stopback() {
        if (window.history && window.history.pushState) {
            $(window).on("popstate", function () {
                window.history.pushState("forward", null, "#");
                window.history.forward(1);
            });
        }
        window.history.pushState("forward", null, "#"); //在IE中必须得有这两行
        window.history.forward(1);
    }
</script>

<body>
<div class="title">
    <h1>用户登录端口</h1>
</div>
<div class="container">
    <div class="left"></div>
    <div class="right">
        <div class="formBox">
            <form action="login" method="post">
                <p>账号</p>
                <input type="text" name="userid" placeholder="账号" size="25" />
                <p>密码</p>
                <input type="password" name="password" placeholder="密码" size="25" />
                <p>验证码</p>
                <input type="text" name="checkcode" placeholder="验证码" size="9" />
                <div class="center"><img id="imgId" src="checkcodeimg"><a href=" #" onclick="run()">看不清？</a></div>
                <input type="submit" name="submit" value="登录" />
                <a href="register.jsp" style="font-size: 16px ;font-family:楷体">点击注册</a><a href="visitor.html" style="display:inline-box ;float:right ;font-size: 16px;font-family: 楷体;"
                                                                               onclick="msg()">游客登录</a>
            </form>

        </div>

    </div>
</div>
</body>

</html>