<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchant Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
 body {
            background: url('https://source.unsplash.com/1200x800/?merchant') center center/cover;
            background-attachment: fixed;
            color: #fff;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 500px;
            margin: auto;
        }

        footer {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
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

<div class="container mt-5">
    <h1 class="text-center mb-4">Merchant Form</h1>
    <form:form action="savemerchant" modelAttribute="merchantobj">
        <div class="form-group">
            <label for="name">Enter Name:</label>
            <form:input path="name" class="form-control" id="name" />
        </div>
        <div class="form-group">
            <label for="email">Enter Email:</label>
            <form:input path="email" class="form-control" id="email" />
        </div>
        <div class="form-group">
            <label for="mobile">Enter Mobile:</label>
            <form:input path="mobileNumber" class="form-control" id="mobile" />
        </div>
        <div class="form-group">
            <label for="password">Enter Password:</label>
            <form:input path="password" type="password" class="form-control" id="password" />
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form:form>
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
