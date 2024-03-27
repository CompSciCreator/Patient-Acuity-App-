package com.example.servlets;

import java.io.IOException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Loginservlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws  IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null && username.equals("username") && password.equals("password")) {
            response.sendRedirect("Index.jsp");
        } else {
            // Handle invalid login
            response.sendRedirect("login.jsp?error=1"); // Redirect back to login page with an error parameter
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws  IOException {
        // Forward POST requests to doGet method
        doGet(request, response);
    }
}




        