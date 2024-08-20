<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
</head>
<body>
    <h1>Product List</h1>
    <ul>
        <%
            // Create an ArrayList to store product names
            java.util.ArrayList<String> products = new java.util.ArrayList<String>();
            products.add("Product 1");
            products.add("Product 2");
            products.add("Product 3");
            products.add("Product 4");
            products.add("Product 5");

            // Iterate over the list and display each product name
            for (int i = 0; i < products.size(); i++) {
                out.println("<li>" + products.get(i) + "</li>");
            }
        %>
    </ul>
</body>
</html>