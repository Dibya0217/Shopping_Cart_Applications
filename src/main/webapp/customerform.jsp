<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
        background: url('https://source.unsplash.com/1200x800/?shopping') center center/cover;
        font-family: Arial, sans-serif;

        display: fixed;
        /* Distribute space between header, content, and footer */
        background-color: #f8f9fa;
    }

        .container {
            max-width:100vh;
            margin:auto;


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
    <h1 class="text-center mb-4">Customer Form</h1>
    <form:form action="savecustomer" modelAttribute="customerobj">
        <div class="form-group">
            <label for="name">Enter Name:</label>
            <form:input path="name" class="form-control" id="name" />
        </div>
        <div class="form-group">
            <label for="email">Enter Email:</label>
            <form:input path="email" class="form-control" id="email" />
        </div>
         <div class="form-group">
            <label for="password">Enter Password:</label>
            <form:input path="password" type="password" class="form-control" id="password" />
        </div>
        <div class="form-group">
            <label for="mobile">Enter Mobile:</label>
            <form:input path="mobileNumber" class="form-control" id="mobile" />
        </div>

        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form:form>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
