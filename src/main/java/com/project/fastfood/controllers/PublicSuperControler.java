package com.project.fastfood.controllers;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.services.CategoriesService;
import com.project.fastfood.services.PostsService;
import com.project.fastfood.services.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

public class PublicSuperControler {
    @Autowired
    CategoriesService categoriesService;
    @Autowired
    ProductsService productsService;
    @Autowired
    PostsService postsService;

    @ModelAttribute
    protected void responseListCategoriesToHomePage(ModelMap modelMap) {
        List<CategoriesEntity> categories = categoriesService.findAllCategories();
        modelMap.addAttribute("categories", categories);
    }
}
