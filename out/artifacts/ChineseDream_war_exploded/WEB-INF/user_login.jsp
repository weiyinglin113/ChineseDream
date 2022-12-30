<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/11/27
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录页面</title>
    <script>
        window.onload=function init() {
changed()
        }
        function msg()
        {
            alert("即将跳转到游客页面，在此页面您只能访问主页！");
            window.open("visitor.html")
        }

        let str = "";

        function myf(){
            let  arr = [2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];//所有候选组成验证码的字符，当然也可以用中文的
            str="";
            for(let i=0; i<4; i++){
                const t = Math.round(Math.random() * 33);
                str+=arr[t];
            }
            document.getElementById("yzm").innerHTML=str;
        }
        function changed() {
        const yz =document.getElementById("yz")
           myf();
       }

    </script>
    <style>
        .fn{
            height:25px;
        }


    </style>
</head>
<body>
<form action="login" method="post">
    <div style="opacity:0.5;position:absolute;width:100%;height:29%;font-size:150px; color: darkred;"align="center">
        <marquee direction="left" behavior="scroll"  scrollamount="50px" ><b>欢 迎 来 到 筑 梦 中 国 ！</b></marquee>
    </div>
    <img src="./webimages/登录背景.jpg" alt="gg" width="100%" ;height="100%" >
    <div style="font-family:verdana;padding:10px;border-radius:10px;width:330px;border:5px solid #4169E1;position:absolute;top:30%;left:40%;background-color:rgb(255,255,255,0.3)">
        <h1 align="center" style="font-size:40px;">用户登录端口</h1>
        <b style="font-size:25px;">账号：</b><input type="text" name="userid" placeholder="请输入账号" size="25" class="fn"/><br><br>
        <b style="font-size:25px;">密码：</b><input type="password" name="password"  placeholder="请输入密码" size="25" class="fn"/><br><br>
        <b style="font-size:20px;">验证码:</b><input type="password" name="yzm"  placeholder="请输入验证码" size="10" id="fn" />
         <span  id="yzm" style="color: red ;font-size: 20px"></span> &nbsp;&nbsp;&nbsp;<button name="change" type="button" id="yz" onclick="changed()" style="font-size: 10px">换一个</button>
        <br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="登录" style="font-size:18px;"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" style="font-size:18px;"/>
        <br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="submit" value="游客登录" onclick="msg()"  style="font-size:18px;"/>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <b style="font-size:20px">还没有账号？</b><div style="color:#000000;font-size:18px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href ="register.jsp">点击注册账号</a></div>
    </div>
    </div>
</form>
</body>
</html>
