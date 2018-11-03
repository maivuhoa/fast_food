package com.project.fastfood.controllers;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.services.*;
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
    @Autowired
    ComboService comboService;
    @Autowired
    ShopService shopService;
    @Autowired
    ProvincesService provincesService;
    @Autowired
    DistrictsService districtsService;
    @Autowired
    WardsServices wardsServices;
    @Autowired
    OrdersService ordersService;
    @Autowired
    UsersService usersService;
    @Autowired
    RolesService rolesService;

    @ModelAttribute
    protected void responseListCategoriesToHomePage(ModelMap modelMap) {
        List<CategoriesEntity> categories = categoriesService.findAllCategories();
        modelMap.addAttribute("categories", categories);
    }
}
