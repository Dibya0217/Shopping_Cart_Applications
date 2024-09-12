<%@page import="com.jsp.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Products for Customers</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 800px;
            margin:auto;
        }

        .navbar {
            background-color: #343a40;
            color: #fff;
        }

        .navbar-brand {
            color: #fff;
        }

        .product-card {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-card-body {
            padding: 20px;
        }

        .product-card-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-card-price {
            font-size: 16px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .product-card-action {
            margin-top: 20px;
        }

        footer {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
            z-index: 1000; /* Ensure the footer is on top of other elements */
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
        <h1 class="mt-4 mb-4">Display Products for Customers</h1>
        <% List<Product> products = (List<Product>) request.getAttribute("productslist"); %>
        <div class="row">
            <% for(Product p : products) { %>
            <div class="col-md-6">
                <div class="card product-card">
                    <div class="card-body product-card-body">
                        <h5 class="card-title product-card-title"><%= p.getBrand() %></h5>
                        <p class="card-text">Category: <%= p.getCategory() %></p>
                        <p class="card-text product-card-price">$<%= p.getPrice() %></p>
                        <div class="product-card-action">
                            <a href="additem?id=<%= p.getId() %>" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <br>
        <button class="btn btn-info"><a href="viewitemsfromcart" style="color: #fff; text-decoration: none;">Cart</a></button>
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
