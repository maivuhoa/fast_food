package com.project.fastfood.services;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.repositories.CategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import java.util.List;

@Service
public class CategoriesService {
    @Autowired
    CategoriesRepository categoriesRepository;
    @Autowired
    ProductsService productsService;

    public List<CategoriesEntity> findAllCategories() {
        return categoriesRepository.findAll();
    }

    public CategoriesEntity findCategory(int id) {
        return categoriesRepository.getOne(id);
    }

    public void saveCategory(CategoriesEntity category) {
        categoriesRepository.save(category);
    }

    public void deleteCategory(CategoriesEntity category) {
        categoriesRepository.delete(category);
    }

    public CategoriesEntity findCategoryByName(String name) {
        return categoriesRepository.findByName(name);
    }
}
