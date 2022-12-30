package com.user.servlet;

import com.user.service.userdao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {


    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        String checkcode = request.getParameter("checkcode");
        String username = request.getParameter("username");

        int count = userdao.selectBylogin(userid, password);

            HttpSession session = request.getSession();
            int user = userdao.selectBylogin(userid, password);
//            获取生成的验证码信息
            String checkcode_session = (String) session.getAttribute("checkcode_session");
            //由于session存储了验证码信息,所以当跳转后在浏览器点返回时候,不改变验证码又可以登录了.所以要在获取后立即删除
            session.removeAttribute("checkcode_session");

            //4.判断用户名或者验证码是否相同
            if (checkcode_session != null && checkcode_session.equalsIgnoreCase(checkcode)) {//equalsIgnoreCase是忽略大小写
                if (count > 0) {
                session.setAttribute("userid", user);
                session.setAttribute("isLogin", "1");
                   session.removeAttribute(username);//清除页面滞留的session，这样点击退出以后，下次登录确保重新获取新的用户名

                    session.setAttribute("username",username);//将用户名传递给session
                PrintWriter out = response.getWriter();
                out.print("<script language='javascript'>"
                        + "alert('登录成功！欢迎来到筑梦中国！');"
                        + "window.location.href='index.html';"
                        + "</script>");
                //response.sendRedirect("index.html");
            }
            else{
                    PrintWriter out = response.getWriter();
                    out.print("<script language='javascript'>"
                            + "alert('登录失败，用户名或者密码错误，请重新登录！');"
                            + "window.location.href='user_login.jsp';"
                            + "</script>");
            }

        } else {
            PrintWriter out = response.getWriter();
            out.print("<script language='javascript'>"
                    + "alert('登录失败，验证码错误，请重新登录！');"
                    + "window.location.href='user_login.jsp';"
                    + "</script>");

        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


}

