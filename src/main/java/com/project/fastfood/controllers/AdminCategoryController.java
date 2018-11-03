package com.project.fastfood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminCategoryController extends AdminSupperController{
    @GetMapping("/admin/categories")
    public String index(HttpServletRequest request, ModelMap modelMap) {
        modelMap.addAttribute("categories", categoriesService.findAllCategories());
        return "admin.category.index";
    }
}
