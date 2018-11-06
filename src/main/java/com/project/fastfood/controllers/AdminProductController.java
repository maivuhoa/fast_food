package com.project.fastfood.controllers;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.entities.ProductsEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

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
        String dirFile = request.getServletContext().getRealPath("/public/public_pages/uploads/images") + File.separator + product.getImage();
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

    @GetMapping("/admin/products/new")
    public String newProduct(ModelMap modelMap) {
        modelMap.addAttribute("categories", categoriesService.findAllCategories());
        return "admin.products.new-product";
    }

    @PostMapping("/admin/products/new")
    public String createProduct(@ModelAttribute ProductsEntity product, @RequestParam("category") int categoryId,
                                @RequestParam("img") MultipartFile img, ModelMap modelMap,
                                RedirectAttributes ra, HttpServletRequest request) {
        CategoriesEntity category = categoriesService.findCategory(categoryId);
        product.setCategory(category);
        product.setType(false);
        String filename = System.nanoTime() + img.getOriginalFilename();
        product.setImage(filename);
        try {
            if (!img.isEmpty()) {
                String dirPath = request.getServletContext().getRealPath("/public/public_pages/uploads/images");
                Path path = Paths.get(dirPath + File.separator + filename);
                File file = new File(dirPath);
                if (!file.exists()) {
                    file.mkdirs();
                }
                byte[] bytes = img.getBytes();
                Files.write(path, bytes);
            }
        } catch (Exception e) {
            modelMap.addAttribute("product", product);
            modelMap.addAttribute("categories", categoriesService.findAllCategories());
            modelMap.addAttribute("error", "Có lỗi xẩy ra");
            return "admin.products.new-product";
        }
        productsService.saveProduct(product);
        ra.addFlashAttribute("success", "Thêm Thành Công");
        return "redirect:/admin/products";
    }

    @GetMapping("/admin/products/{id}/edit")
    public String editProduct(@PathVariable("id") int id, ModelMap modelMap) {
        modelMap.addAttribute("product", productsService.findProductById(id));
        modelMap.addAttribute("categories", categoriesService.findAllCategories());
        return "admin.products.edit-product";
    }

    @PostMapping("/admin/products/{id}/edit")
    public String updateProduct(@PathVariable("id") int id, @ModelAttribute ProductsEntity product, @RequestParam("category") int categoryId,
                                @RequestParam("img") MultipartFile img, ModelMap modelMap,
                                RedirectAttributes ra, HttpServletRequest request) {
        ProductsEntity productsEntity = productsService.findProductById(id);
        CategoriesEntity category = categoriesService.findCategory(categoryId);
        productsEntity.setCategory(category);
        productsEntity.setName(product.getName());
        productsEntity.setDescription(product.getDescription());
        productsEntity.setPrice(product.getPrice());
        if (!img.isEmpty()) {
            try {
                String dirFile = request.getServletContext().getRealPath("/public/public_pages/uploads/images") + File.separator + productsEntity.getImage();
                File file = new File(dirFile);
                if (file.exists()) {
                    file.delete();
                }
                String filename = System.nanoTime() + img.getOriginalFilename();
                productsEntity.setImage(filename);
                String dirPath = request.getServletContext().getRealPath("/files");
                Path path = Paths.get(dirPath + File.separator + filename);
                File newFile = new File(dirPath);
                if (!newFile .exists()) {
                    newFile .mkdirs();
                }
                byte[] bytes = img.getBytes();
                Files.write(path, bytes);
            } catch (Exception e) {
                modelMap.addAttribute("product", product);
                modelMap.addAttribute("categories", categoriesService.findAllCategories());
                modelMap.addAttribute("error", "Có lỗi xẩy ra");
                return "admin.products.edit-product";
            }
        }
        productsService.saveProduct(productsEntity);
        ra.addFlashAttribute("success", "Cập Nhật Thành Công");
        return "redirect:/admin/products";
    }
}
