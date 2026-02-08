package com.stock.controller;

import com.stock.model.Produit;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.stock.servic.IStockService;
import com.stock.service.impl.StockServiceImpl;

@WebServlet("/catalogue")
public class CatalogueServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        IStockService service = new StockServiceImpl();
        List<Produit> produits = service.recupererCatalogue();

        request.setAttribute("listeProduits", produits);

        // -------------------------------
        // Lecture du cookie lastVisit
        // -------------------------------
        String lastVisitValue = null;

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("lastVisit".equals(c.getName())) {
                    lastVisitValue = c.getValue();
                    break;
                }
            }
        }

        request.setAttribute("lastVisit", lastVisitValue);

        // -------------------------------
        // Création / mise à jour du cookie
        // -------------------------------
        String now = java.time.LocalDateTime.now().toString();

        Cookie cookie = new Cookie("lastVisit", now);
        cookie.setMaxAge(24 * 60 * 60); // 24h
        response.addCookie(cookie);

        request.getRequestDispatcher("/WEB-INF/vues/catalogue.jsp")
                .forward(request, response);
    }

}
