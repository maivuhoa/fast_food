package com.project.fastfood.controllers;

import com.project.fastfood.entities.PostsEntity;
import com.project.fastfood.entities.ShopEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicAboutPageController extends PublicSuperControler{
    @GetMapping("/about")
    public String responseListPosts(HttpServletRequest request, ModelMap modelMap) {
        return "public.about.index";
    }
}
