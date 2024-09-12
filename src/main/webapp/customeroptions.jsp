<%@page import="com.jsp.shoppingcart_application.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Options</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        /* Adjusted to accommodate navbar */
        background-color: #f8f9fa;
    }

    .container {
        max-width: 800px;
        margin: auto;
        padding-top: 20px;
    }

     footer {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
            z-index: 1000;
        }

    .btn-option {
        width: 100%;
        margin-bottom: 10px;
        border-radius: 0;
        display: flex;
        align-items: center;
    }

    .btn-option i {
        margin-right: 10px;
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
    <% Customer c = (Customer) session.getAttribute("customerinfo"); %>
    <h1 class="mb-4">Welcome <%= c.getName() %></h1>
    <a href="fetchallproducts" class="btn btn-primary btn-option">
        <i class="fas fa-shopping-bag"></i> View All Products
    </a>
    <a href="readproductsbybrand.jsp" class="btn btn-primary btn-option">
        <i class="fas fa-tags"></i> View Products By Brand
    </a>
    <a href="readproductsbycategory.jsp" class="btn btn-primary btn-option">
        <i class="fas fa-box-open"></i> View Products By Category
    </a>
    <a href="readproductsbypricerange.jsp" class="btn btn-primary btn-option">
        <i class="fas fa-dollar-sign"></i> View Products By Price Range
    </a>
</div>

<footer>
    <div class="container">
        <p>&copy; HaQ-Se~Shopping. All rights reserved.</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
