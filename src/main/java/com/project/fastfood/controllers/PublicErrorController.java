package com.project.fastfood.controllers;

import com.project.fastfood.entities.PostsEntity;
import com.project.fastfood.entities.ShopEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicErrorController{
    @GetMapping("/error/404")
    public String error404(HttpServletRequest request, ModelMap modelMap) {
        return "/jsp/public_pages/error/404";
    }
    @GetMapping("/error/403")
    public String error403(HttpServletRequest request, ModelMap modelMap) {
        return "/jsp/public_pages/error/403";
    }
}