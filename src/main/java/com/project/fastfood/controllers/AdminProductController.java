package com.project.fastfood.controllers;

import com.project.fastfood.entities.ProductsEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

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

    @GetMapping("/admin/products/{id}/delete")
    public String deleteProduct(@PathVariable("id") int id, RedirectAttributes ra, HttpServletRequest request) {
        ProductsEntity product = productsService.findProductById(id);
        String dirFile = request.getServletContext().getRealPath("/files") + product.getImage();
        File file = new File(dirFile);
        if (file.exists()) {
            file.delete();
        }
        productsService.deleteProduct(product);
        ra.addFlashAttribute("success", "Xóa thành công");
        if (product.getType()) {
            return "redirect:/admin/combo";
        }
        return "redirect:/admin/products";
    }
}
