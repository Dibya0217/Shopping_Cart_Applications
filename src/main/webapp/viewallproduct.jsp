<%@page import="com.jsp.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
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

        .product-card-stock {
            font-size: 14px;
            color: #28a745;
        }

        .product-card-action {
            margin-top: 20px;
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
        <h1 class="mt-4 mb-4">View All Products</h1>
        <div class="row">
            <%
            List<Product> products = (List<Product>) request.getAttribute("productslist");
            for (Product p : products) {
            %>
            <div class="col-md-4">
                <div class="card product-card">
                    <div class="card-body product-card-body">
                        <h5 class="card-title product-card-title"><%= p.getBrand() %></h5>
                        <p class="card-text">Category: <%= p.getCategory() %></p>
                        <p class="card-text product-card-price">$<%= p.getPrice() %></p>
                        <p class="card-text product-card-stock">Stock: <%= p.getStock() %></p>
                        <div class="product-card-action">
                            <a href="update?id=<%= p.getId() %>" class="btn btn-primary">Update</a>
                            <a href="delete?id=<%= p.getId() %>" class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
