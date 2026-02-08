package com.stock.service.impl;

import com.stock.daoo.IProduitDAO;
import com.stock.dao.impl.ProduitDAOImpl;
import com.stock.model.Produit;
import com.stock.servic.IStockService;

import java.util.List;

public class StockServiceImpl implements IStockService {

    private IProduitDAO dao = new ProduitDAOImpl();

    @Override
    public List<Produit> recupererCatalogue() {

        return dao.findAll();
    }
}
