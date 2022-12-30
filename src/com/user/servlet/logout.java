package com.user.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/logout")
public class logout extends HttpServlet {

    public void logout(HttpServletRequest request, HttpServletResponse response){
        request.getSession().invalidate();
        try {
            request.getRequestDispatcher("/usr_login.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
