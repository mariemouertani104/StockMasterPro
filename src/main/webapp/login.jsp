<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion - StockMaster Pro</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
        }
        .login-container {
            background-color: rgba(255,255,255,0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
            width: 350px;
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
        }
        input {
            margin-bottom: 15px;
        }
        .btn-login {
            width: 100%;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Connexion</h2>
    <form method="post" action="connexion">
        <input type="text" name="login" class="form-control" placeholder="Login" required>
        <input type="password" name="password" class="form-control" placeholder="Mot de passe" required>
        <button type="submit" class="btn btn-primary btn-login">Se connecter</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
