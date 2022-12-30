package com.user.servlet;
import com.user.entity.user;
import com.user.service.userdao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/register")
public class register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        String usersex = request.getParameter("sex");
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("password");
        String userphone = request.getParameter("phone");
        //创建用户实体
        user u = new user(userid, username, pwd, usersex, userphone);

        //加入到数据库表中
        int count = userdao.insert(u);
        System.out.print(u);
        //成功失败重定向

        if (count > 0) {
            PrintWriter out = response.getWriter();
            out.print("<script language='javascript'>alert('注册成功，前往登录');" +
                    "window.location.href='user_login.jsp';</script>");
            //response.sendRedirect("student_login.jsp");

        } else {
            PrintWriter out = response.getWriter();
            out.print("<script language='javascript'>alert('注册失败，用户信息已存在，重新注册');" +
                    "window.location.href='register.jsp';</script>");


        }
    }
}
