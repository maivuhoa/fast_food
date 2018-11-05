package com.project.fastfood.controllers;

import com.project.fastfood.services.CategoriesService;
import com.project.fastfood.services.OrdersService;
import com.project.fastfood.services.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminSupperController {
    @Autowired
    CategoriesService categoriesService;
    @Autowired
    OrdersService ordersService;
    @Autowired
    ProductsService productsService;
}
