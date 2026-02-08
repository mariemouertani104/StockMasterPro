package com.stock.dao.impl;

import com.stock.daoo.IProduitDAO;
import com.stock.model.Produit;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProduitDAOImpl implements IProduitDAO {

    private static final String URL =
            "jdbc:h2:~/stockdb";
    private static final String USER = "sa";
    private static final String PASSWORD = "";

    @Override
    public List<Produit> findAll() {

        List<Produit> produits = new ArrayList<>();

        String sql = "SELECT id, nom, prix FROM produits";

        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {

                Produit p = new Produit();

                p.setId(rs.getInt("id"));
                p.setNom(rs.getString("nom"));
                p.setPrix(rs.getDouble("prix"));

                produits.add(p);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return produits;
    }
}
