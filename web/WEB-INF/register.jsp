<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/11/27
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/function.js"></script>

    <style>

        .reg p .error{
            display:inline-block;
            border:1px solid #ff855a;
            background-color:#ffe8e0;
            height:18px;
            line-height:20px;
            padding:0px 15px;
            margin-left:10px;
        }
        .fn{
            height:25px;
        }
    </style>
<body >
<img src="./webimages/注册背景.png" alt="gugong" width="120%";height="100%" >
<div style="font-family: 方正少儿简体;padding:10px;border-radius:10px;width:520px;border:5px solid #FF0000;position:absolute;top:20%;left:35%;background-color:white;background-color:rgb(255,255,255,0.5)">
    <div style="font-family:verdana;padding:10px;border-radius:10px;width:450px;border:5px solid #4169E1;">
        <div style="opacity:0.5;position:absolute;left:35px;width:380px;height:70px;background-color:#FFD700"></div>
        <h1  align="center">账号注册</h1>
    </div>
    <!-- onsubmit="return checkForm(this)" -->

    <form action="register"  method="post" onsubmit="return checkForm(this)" >
        <div class="reg">
            <br>
            <p>
                <b style="font-size:25px;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</b>
                <input type="text" name="username" size="25" class="fn" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)"placeholder="请输入名字"  /><span>请填写姓名！</span>
            </p>
            <p>
                <b style="font-size:25px;">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</b>
                <input type="radio" value="xy" name="sex" checked="checked"/>男
                <input type="radio" value="xx" name="sex" />女
            </p>
            <p>
                <b style="font-size:25px;">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</b>
                <input type="text" name="userid" size="25" class="fn" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)" placeholder="请输入账号(6-16个字符)"/><span>请填写账号！</span>
            </p>
            <p>
                <b style="font-size:25px;">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</b>
                <input type="password" name="password" size="25" class="fn" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)" placeholder="请输入密码(6-16个字符)"/><span>请填写密码！</span>
            </p>
            <p>
                <b style="font-size:25px;">确认密码 :</b>
                <input type="password" name="repassword" size="25" class="fn" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)" placeholder="请确认密码"/><span>请确认密码！</span>
            </p>
            <p>
                <b style="font-size:25px;">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:</b>
                <input type="text" name="phone" size="25" class="fn" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)" placeholder="请输入电话(6-11个字符)"/><span >请填写电话！</span>
            </p>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="提交"   style="font-size:18px;"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" style="font-size:18px;"/>
        <br>
       <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="user_login.jsp">返回登录首页</a><br>
    </form>
</div>
</body>
</html>

