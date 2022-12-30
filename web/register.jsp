<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/11/27
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <script src="./js/function.js"></script>
    <script src="./js/jquery.min.js"></script>
    <style>
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body {
            background: url("./images/注册.jpg") no-repeat;
        }

        .rg_layout {
            border-radius: 15px;
            position: absolute;
            left: 20%;
            top: 15%;
            width: 930px;
            height: 380px;
            border: 5px solid #EEEEEE;
            background-color: white;
            /*让div水平居中*/
            margin: auto;
            margin-top: 15px;
        }

        .rg_left {
            float: left;
            margin: 15px;
            width: 20%;
        }

        .rg_left>p:first-child {
            color: #FFD026;
            font-size: 20px;
        }

        .rg_left>p:last-child {
            color: #A6A6A6;
        }

        .rg_center {
            /*border: 1px solid red;*/
            float: left;
            width: 530px;
            /*margin: 15px;*/
        }

        .rg_right {
            float: right;
            margin: 15px;
        }

        .rg_right>p:first-child {
            font-size: 15px;
        }

        .rg_right p a {
            color: pink;
        }

        .td_left {

            width: 80px;
            text-align: right;
            height: 45px;
        }

        .td_right {
            padding-left: 50px;

        }

        #username,
        #password,
        #repassword,
        #name,
        #tel,
        #userid {
            width: 251px;
            height: 32px;
            border: 1px solid #A6A6A6;
            /*设置边框圆角*/
            border-radius: 5px;
            padding-left: 10px;
        }



        #btn_sub {
            width: 150px;
            height: 40px;
            background-color: #FFD026;
            border: 1px solid #FFD026;
        }
    </style>
</head>

<body>
<div class="rg_layout">
    <div class="rg_left">
        <p>新用户注册</p>
        <p>USER REGISTER</p>
    </div>
    <div class="rg_center">
        <div class="rg_form">
            <form action="register" method="post" onsubmit="return checkForm(this)">
                <table>
                    <tr>
                        <td class="td_left"><label for="username">用户名</label></td>
                        <td class="td_right"><input type="text" name="username" id="username" placeholder="请输入用户名"
                                                    value="" onfocus="FocusItem(this)" onblur="CheckItem(this)">
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label>性别</label></td>
                        <td class="td_right"><input type="radio" name="sex" value="男" checked="checked">男
                            <input type="radio" name="sex" value="女">女
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="name">账号</label></td>
                        <td class="td_right"><input type="text" name="userid" id="userid"
                                                    placeholder="请输入账号(6-16个字符)" value="" onfocus="FocusItem(this)"
                                                    onblur="CheckItem(this)"><span></span></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password">密码</label></td>
                        <td class="td_right"><input type="password" name="password" id="password"
                                                    placeholder="请输入密码" value="" onfocus="FocusItem(this)"
                                                    onblur="CheckItem(this)"><span></span></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password">确认密码</label></td>
                        <td class="td_right"><input type="password" name="repassword" id="repassword"
                                                    placeholder="请输入密码" value="" onfocus="FocusItem(this)"
                                                    onblur="CheckItem(this)"><span></span></td>
                    </tr>
                    <tr>

                        <td class="td_left"><label for="tel">手机号</label></td>
                        <td class="td_right"><input type="text" name="phone" id="tel" placeholder="请输入手机号" value=""
                                                    onfocus="FocusItem(this)" onblur="CheckItem(this)"><span></span></td>

                    </tr>


                    <tr>
                        <td colspan="2" align="center"><input type="submit" id="btn_sub" value="注册"></td>
                    </tr>

                </table>


            </form>
        </div>
    </div>
    <div class="rg_right">
        <p>已有账号?<a href="user_login.jsp">立即登录</a></p>
    </div>

</div>

</body>