<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Catalogue - StockMaster Pro</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f0f2f5;
            font-family: Arial, sans-serif;
            padding: 30px;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            margin-bottom: 20px;
        }
        table {
            margin-top: 20px;
        }
        th, td {
            text-align: center;
        }
    </style>
</head>

<body>

<div class="container">

    <!-- Barre supérieure -->
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="mb-0">Catalogue des produits</h2>

        <!-- Bouton logout -->
        <a href="${pageContext.request.contextPath}/logout"
           class="btn btn-outline-danger">
            Logout
        </a>
    </div>

    <p><strong>Utilisateur connecté :</strong> ${sessionScope.user}</p>
    <p><strong>Dernière visite :</strong> ${lastVisit}</p>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prix</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listeProduits}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.nom}</td>
                <td>${p.prix}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
