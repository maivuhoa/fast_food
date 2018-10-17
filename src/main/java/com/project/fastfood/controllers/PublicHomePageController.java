package com.project.fastfood.controllers;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.services.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PublicHomePageController extends PublicSuperControler{

    @GetMapping("/index")
    public String viewHomePage(ModelMap modelMap) {
        int size = categoriesService.findAllCategories().size();
        responseListCategoriesToHomePage(modelMap);
        return "public.category.index";
    }

}
