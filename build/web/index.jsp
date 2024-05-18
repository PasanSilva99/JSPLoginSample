<%-- 
    Document   : index.jsp
    Created on : May 18, 2024, 5:15:06 PM
    Author     : pasan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        // Get all cookies
        Cookie[] cookies = request.getCookies();
        boolean loggedIn = false;

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("loggedIn".equals(cookie.getName())) {
                    loggedIn = true;
                    break;
                }
            }
        }

        // If the user is logged in, redirect to the home page
        if (loggedIn) {
            response.sendRedirect("home.jsp");
            return;
        }
    %>
    
    <body>
        <h1>Login</h1>
        <form action="LoginServlet" method="POST">
            <input type="text" name="username" id="username" placeholder="enter a username"/>
            <input type="password" name="password" id="password" placeholder="your password"/>
            <input type="submit" />
        </form>

        </form>
    </body>
</html>
