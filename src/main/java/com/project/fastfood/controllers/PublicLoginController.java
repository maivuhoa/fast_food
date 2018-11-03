package com.project.fastfood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PublicLoginController extends PublicSuperControler{
    @GetMapping("/lg")
    public String responseListPosts(HttpServletRequest request, ModelMap modelMap) {
        return "public.about.index";
    }
}
