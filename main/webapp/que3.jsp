<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
</head>
<body>
    <%
        Boolean isLoggedIn = (Boolean) request.getAttribute("isLoggedIn");
        String userName = (String) request.getAttribute("userName");
    %>
    <h1>Welcome Page</h1>
    <% if (isLoggedIn != null && isLoggedIn) { %>
        <p>Welcome, <%= userName %>! You are logged in.</p>
    <% } else { %>
        <p>Please log in to access your account.</p>
    <%
        }
    %>
</body>
</html>
