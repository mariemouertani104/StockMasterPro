<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <title>Catalogue</title>

</head>
<body>

<h2>Catalogue des produits</h2>
<p>
    Utilisateur connecté : ${sessionScope.user}
</p>
<p>
    Dernière visite : ${lastVisit}
</p>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Prix</th>
    </tr>

    <c:forEach items="${listeProduits}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.nom}</td>
            <td>${p.prix}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
