package com.stock.servic;

import com.stock.model.Produit;
import java.util.List;

public interface IStockService {

    List<Produit> recupererCatalogue();

}
