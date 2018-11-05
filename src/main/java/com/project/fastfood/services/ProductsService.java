package com.project.fastfood.services;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.entities.ProductsEntity;
import com.project.fastfood.repositories.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductsService {
    @Autowired
    ProductsRepository productsRepository;

    public List<ProductsEntity> findAllProductsByCategory(int categoryId, int page, int pageSize) {
        if (page < 0)
            page = 0;
        Pageable pageable = new PageRequest(page, pageSize);
        Page<ProductsEntity> productsEntities = productsRepository.findAllByCategory_IdCategory(categoryId, pageable);
        List<ProductsEntity> products = new ArrayList<>(productsEntities.getSize());
        for (ProductsEntity productEntity : productsEntities) {
            products.add(productEntity);
        }
        return products;
    }

    public ProductsEntity demo(int id, boolean isCombo) {
        return productsRepository.findByIdProductAndTypeEquals(id, isCombo);
    }

    public List<ProductsEntity> findProducts() {
        return productsRepository.findProductsEntitiesByTypeEquals(false);
    }

    public List<ProductsEntity> findComboProducts() {
        return productsRepository.findProductsEntitiesByTypeEquals(true);
    }

    public ProductsEntity findProductById(int id) {
        return productsRepository.findProductsEntitiesByIdProduct(id);
    }

    public void deleteProduct(ProductsEntity product) {
        productsRepository.delete(product);
    }
}
