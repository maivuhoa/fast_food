package com.project.fastfood.controllers;

import com.project.fastfood.entities.ProductsEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class PublicHomePageController extends PublicSuperControler {
    @GetMapping("/index/{categoryId}")
    public String responseListCategories(@PathVariable(value = "categoryId", required = true) int categoryId, @RequestParam(value = "page", defaultValue = "0") int page, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize, ModelMap modelMap) {
        responseListCategoriesToHomePage(modelMap);
        responseAllProductsByCategory(categoryId, page, pageSize, modelMap);
        responseCategoryIdSelected(categoryId, modelMap);
        return "public.category.index";
    }

    public void responseAllProductsByCategory(@RequestBody int categoryId, int page, int pageSize, ModelMap modelMap) {
        List<ProductsEntity> products = productsService.findAllProductsByCategory(categoryId, page, pageSize);
        modelMap.addAttribute("products", products);
    }

    private void responseCategoryIdSelected(int categoryId, ModelMap modelMap) {
        modelMap.addAttribute("categorySelected", categoryId);
    }

    @PostMapping(value = "/combo/{id}", consumes = "application/json", produces = "application/json")
    public @ResponseBody
    ArrayList<ProductsEntity> responseProductsOfCombo(@PathVariable("id") int id){
        int size = comboService.findAllProductOfComboByIdCombo(id).size();
        return comboService.findAllProductOfComboByIdCombo(id);
    }
}
