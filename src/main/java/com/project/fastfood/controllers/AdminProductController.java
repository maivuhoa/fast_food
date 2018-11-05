package com.project.fastfood.controllers;

import com.project.fastfood.services.CategoriesService;
import com.project.fastfood.services.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class AdminProductController extends AdminSupperController {
    @GetMapping("/admin/products")
    public String showProducts(ModelMap modelMap) {
        modelMap.addAttribute("products", productsService.findProducts());
        return "admin.products.index";
    }

    @GetMapping("/admin/combo")
    public String showAllCombo(ModelMap modelMap) {
        modelMap.addAttribute("listCombo", productsService.findComboProducts());
        return "admin.products.combo";
    }
}
