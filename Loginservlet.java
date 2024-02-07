//package com.example.servlets;

import web.xml;
import login.jsp;
import pom.xml;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if username and password are correct (universal credentials)
        if ("your_default_username".equals(username) && "your_default_password".equals(password)) {
            // Redirect to some page after successful login
            response.sendRedirect("welcome.jsp"); 
        } else {
            // Redirect back to login page with an error message
            response.sendRedirect("login.jsp?error=1");
        }


    }
}

