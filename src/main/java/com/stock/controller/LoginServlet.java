package com.stock.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/connexion")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        if ("admin".equals(login) && "123".equals(password)) {

            HttpSession session = request.getSession();
            session.setAttribute("user", "admin");

            response.sendRedirect(request.getContextPath() + "/catalogue");

        } else {

            request.setAttribute("error", "Login ou mot de passe incorrect");

            request.getRequestDispatcher("/login.jsp")
                    .forward(request, response);
        }
    }
}
