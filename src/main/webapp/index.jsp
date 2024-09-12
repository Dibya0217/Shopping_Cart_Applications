<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shopping Homepage</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>

       body {
        background: url('https://source.unsplash.com/1200x800/?shopping') center center/cover;
        font-family: Arial, sans-serif;
        min-height: 100vh; /* Ensure the body covers the full height of the viewport */
        display: fixed;
        flex-direction: column; /* Arrange children vertically */
        justify-content: space-between; /* Distribute space between header, content, and footer */
        background-color: #f8f9fa;
    }
    .container {
      text-align: center;
      margin:auto;
    }
    .jumbotron {
      background: rgba(0, 0, 0, 0.10);
      color: #fff;
      padding: 100px 0;
      margin-bottom: 50px;
    }
    h1 {
      font-size: 3.5rem;
      font-weight: bold;
    }
    h2 {
      margin-bottom: 30px;
    }
    .btn-lg {
      font-size: 1.5rem;
      padding: 15px 30px;
    }
    .btn-merchant {
      background-color: #ff6f61;
      border-color: #ff6f61;
    }
    .btn-customer {
      background-color: #3cb371;
      border-color: #3cb371;
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
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3">Welcome to Our Shopping Site</h1>
      <p class="lead">Find amazing deals and great products here!</p>
    </div>
  </div>

  <div class="container">
    <h2>Are you a...</h2>
    <a href="merchant" class="btn btn-primary btn-lg btn-merchant"><i class="fas fa-store"></i> Merchant</a>
    <a href="customer" class="btn btn-primary btn-lg btn-customer"><i class="fas fa-users"></i> Customer</a>
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
