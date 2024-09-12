<%@page import="com.jsp.shoppingcart_application.dto.Orders"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Bill</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>


                body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
.navbar {
            background-color: #343a40;
            color: #fff;
        }

        .navbar-brand {
            color: #fff;
        }

                     .container {
            max-width: 800px;
            margin:auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        h3 {
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .customer-details p {
            margin-bottom: 5px;
        }

        button {
            margin-top: 30px;
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
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
    <h2>${msg}</h2>
    <h3>Customer Details:</h3>
    <div class="customer-details">
        <p><strong>Name:</strong> ${ordersobj.name}</p>
        <p><strong>Address:</strong> ${ordersobj.address}</p>
        <p><strong>Mobile Number:</strong> ${ordersobj.mobileNumber}</p>
    </div>
    <div class="text-center">
        <button><a href="customerloginform.jsp" style="color: #fff; text-decoration: none;">Browse More Products</a></button>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
