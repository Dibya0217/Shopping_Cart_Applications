<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Merchant Login & Register</title>
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
            text-align: center;
            margin:auto;
        }

        footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin-bottom: 0;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #545b62;
            border-color: #4e555b;
        }

        .btn-register {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-register:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }

        .btn-login {
            background-color: #ffc107;
            border-color: #ffc107;
        }

        .btn-login:hover {
            background-color: #e0a800;
            border-color: #d39e00;
        }
        .div{
        text-align:center;
        padding-top: 100px;

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

    <div class="div">
        <h1>Merchant Login & Register</h1>
        <button class="btn btn-lg btn-register"><a href="addmerchant" class="text-white"/> Register</button>
        <br><br>
        <br>
        <button class="btn btn-lg btn-login"><a href="merchantloginform.jsp" class="text-white"/>Login</button>
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
