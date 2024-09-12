<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Item to Cart</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
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

        form input[type="submit"] {
            margin-top: 20px;
            width: 100%;
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
        <h1 class="mb-4">Add Item to Cart</h1>
        <form:form action="additemtocart" modelAttribute="itemobj">
            <form:hidden path="p_id"/>
            <div class="form-group">
                <label for="brand">Brand:</label>
                <form:input path="brand" class="form-control" readonly="true"/>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <form:input path="category" class="form-control" readonly="true"/>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <form:input path="price" class="form-control" readonly="true"/>
            </div>
            <div class="form-group">
                <label for="quantity">Enter Quantity:</label>
                <form:input path="quantity" class="form-control"/>
            </div>
            <input type="submit" class="btn btn-primary" value="Add to Cart">
        </form:form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
