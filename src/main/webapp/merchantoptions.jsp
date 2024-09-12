<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.jsp.shoppingcart_application.dto.Merchant" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchant Options</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;

            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .container {
            max-width: 800px;
            margin-top: auto;
            text-align: center;
            flex-grow: 1; /* Allow container to grow */
        }

        .welcome-message {
            margin-bottom: 30px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
            margin-top:56px;
        }

        .button-container button {
            padding: 10px 20px;
            font-size: 18px;
        }


    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#"><i class="fas fa-store"></i> HaQ-se~Shopping</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-home"></i> Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-envelope"></i> Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-info-circle"></i> About Us</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="welcome-message">
        ${msg}
        <% Merchant m = (Merchant) session.getAttribute("merchantinfo");
        if (m != null) { %>
            <h1>Welcome <%= m.getName() %></h1>
        <% } else { %>
            <h1>Please Login first</h1>
        <% } %>
    </div>

    <% if (m != null) { %>
        <div class="button-container">
            <button class="btn btn-primary" onclick="location.href='addproduct';">
                <i class="fas fa-plus-circle"></i> Add Product
            </button>
            <button class="btn btn-secondary" onclick="location.href='viewproduct';">
                <i class="fas fa-list"></i> View All Products
            </button>
        </div>
    <% } else { %>
        <a href="merchantloginform.jsp" class="btn btn-primary">
            <i class="fas fa-sign-in-alt"></i> Login
        </a>
    <% } %>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
