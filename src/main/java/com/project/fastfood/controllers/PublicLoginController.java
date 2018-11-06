package com.project.fastfood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PublicLoginController extends PublicSuperControler{
    @GetMapping("/login")
    public String loginPage(HttpServletRequest request, ModelMap modelMap) {
        return "public.login.index";
    }
}
