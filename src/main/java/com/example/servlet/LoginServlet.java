package com.example.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final Map<String, String> USERS = new HashMap<>();
    
    static {
        USERS.put("rakesh", "rakesh");
        USERS.put("basavarjcn", "basavaraj");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if (USERS.containsKey(username) && USERS.get(username).equals(password)) {
            request.getSession().setAttribute("username", username);
            response.sendRedirect("info.jsp");  // Changed to info.jsp
        } else {
            response.sendRedirect("index.html?error=true");
        }
    }
}