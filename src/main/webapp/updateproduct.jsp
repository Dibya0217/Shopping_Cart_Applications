<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
    body {
        font-family: Arial, sans-serif;
        min-height: 100vh; /* Ensure the body covers the full height of the viewport */
        display: flex;
        flex-direction: column; /* Arrange children vertically */
        justify-content: space-between; /* Distribute space between header, content, and footer */
        background-color: #f8f9fa;
    }



        .container {
            max-width: 800px;
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

<div class="container">
    <h1 class="mb-4">Update Form</h1>
    <form:form action="updateproduct" modelAttribute="updateobj">
    <div class="form-group">

            <form:hidden  path="id" class="form-control" id="id" />
        </div>
        <div class="form-group">
            <label for="brand"><i class="fas fa-tags"></i> Enter Brand:</label>
            <form:input path="brand" class="form-control" id="brand" placeholder="E.g., Nike, Adidas" />
        </div>
        <div class="form-group">
            <label for="category"><i class="fas fa-list-alt"></i> Enter Category:</label>
            <form:input path="category" class="form-control" id="category" placeholder="E.g., Shoes, Clothing" />
        </div>
        <div class="form-group">
            <label for="price"><i class="fas fa-dollar-sign"></i> Enter Price:</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">$</span>
                </div>
                <form:input path="price" class="form-control" id="price" placeholder="E.g., 100" />
            </div>
        </div>
        <div class="form-group">
            <label for="stock"><i class="fas fa-cubes"></i> Enter Stock:</label>
            <form:input path="stock" class="form-control" id="stock" placeholder="E.g., 1000" />
        </div>
        <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-save"></i> Update Product</button>
    </form:form>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
