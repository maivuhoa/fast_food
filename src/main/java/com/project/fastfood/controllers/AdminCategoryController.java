package com.project.fastfood.controllers;

import com.project.fastfood.entities.CategoriesEntity;
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
public class AdminCategoryController extends AdminSupperController{
    @GetMapping("/admin/categories")
    public String index(HttpServletRequest request, ModelMap modelMap) {
        modelMap.addAttribute("categories", categoriesService.findAllCategories());
        return "admin.category.index";
    }

    @GetMapping("/admin/categories/new")
    public String newCategory() {
        return "admin.category.new";
    }

    @PostMapping("/admin/categories/new")
    public String createCategory(@ModelAttribute CategoriesEntity category,
                                 @RequestParam("img") MultipartFile img, ModelMap modelMap,
                                 RedirectAttributes ra, HttpServletRequest request) {

        String filename = System.nanoTime() + img.getOriginalFilename();
        category.setImage(filename);
        try {
            if (!img.isEmpty()) {
                String dirPath = request.getServletContext().getRealPath("/files");
                Path path = Paths.get(dirPath + File.separator + filename);
                File file = new File(dirPath);
                if (!file.exists()) {
                    file.mkdirs();
                }
                byte[] bytes = img.getBytes();
                Files.write(path, bytes);
            }
        } catch (Exception e) {
            modelMap.addAttribute("category", category);
            modelMap.addAttribute("error", "Có lỗi xẩy ra");
            return "admin.category.new";
        }
        categoriesService.saveCategory(category);
        ra.addFlashAttribute("success", "Thêm Thành Công");
        return "redirect:/admin/categories";
    }

    @GetMapping("/admin/categories/{id}/delete")
    public String deleteCategory(@PathVariable("id") int id, RedirectAttributes ra, HttpServletRequest request) {
        CategoriesEntity category = categoriesService.findCategory(id);
        String dirFile = request.getServletContext().getRealPath("/files") + category.getImage();
        File file = new File(dirFile);
        if (file.exists()) {
            file.delete();
        }
        categoriesService.deleteCategory(category);
        ra.addFlashAttribute("success", "Xóa thành công");
        return "redirect:/admin/categories";
    }

    @GetMapping("/admin/categories/{id}/edit")
    public String editCategory(@PathVariable("id") int id, ModelMap modelMap) {
        modelMap.addAttribute("category", categoriesService.findCategory(id));
        return "admin.category.edit";
    }

    @PostMapping("/admin/categories/{id}/edit")
    public String updateCategory(@PathVariable("id") int id, @RequestParam("name") String name,
                                 @RequestParam(value = "img", required = false) MultipartFile img, ModelMap modelMap,
                                 RedirectAttributes ra, HttpServletRequest request) {
        CategoriesEntity category = categoriesService.findCategory(id);
        if (!img.isEmpty()) {
            try {
                String dirFile = request.getServletContext().getRealPath("/files") + category.getImage();
                File file = new File(dirFile);
                if (file.exists()) {
                    file.delete();
                }
                String filename = System.nanoTime() + img.getOriginalFilename();
                category.setImage(filename);
                String dirPath = request.getServletContext().getRealPath("/files");
                Path path = Paths.get(dirPath + File.separator + filename);
                File newFile = new File(dirPath);
                if (!newFile .exists()) {
                    newFile .mkdirs();
                }
                byte[] bytes = img.getBytes();
                Files.write(path, bytes);
            } catch (Exception e) {
                modelMap.addAttribute("category", category);
                modelMap.addAttribute("error", "Có lỗi xẩy ra");
                return "admin.category.edit";
            }

        }
        category.setName(name);
        categoriesService.saveCategory(category);
        System.out.println(category.getName());
        ra.addFlashAttribute("success", "Cập nhật thành công");
        return "redirect:/admin/categories";
    }
}
