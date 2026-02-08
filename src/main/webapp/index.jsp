<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>StockMaster Pro - Accueil</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-FNwbL5CmuhRVVJ2U5tPzXMQT2O1uFf0hGqBvDr7x0bTnUvqB+FxLhZGh7b6FsfL6" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }
        .container {
            text-align: center;
            background-color: rgba(0,0,0,0.6);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.5);
        }
        h1 {
            font-size: 3rem;
            margin-bottom: 30px;
        }
        .btn-login {
            font-size: 1.2rem;
            padding: 10px 30px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Bienvenue sur StockMaster Pro</h1>
    <p>Gérez vos produits facilement et en toute sécurité.</p>
    <a href="login.jsp" class="btn btn-primary btn-login">Se connecter</a>
</div>

<!-- Bootstrap JS (CDN) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kQtW33rZJAHjgefvhyyzcGF5xT5Q6E3n9aqfvscD5wG0kp8r6GzWVoEX7Nf2hBpF"
        crossorigin="anonymous"></script>
</body>
</html>
