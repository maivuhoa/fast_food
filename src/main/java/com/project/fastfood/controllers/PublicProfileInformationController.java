package com.project.fastfood.controllers;

import com.project.fastfood.entities.DistrictsEntity;
import com.project.fastfood.entities.PostsEntity;
import com.project.fastfood.entities.ShopEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicProfileInformationController extends PublicSuperControler{
    @GetMapping("/profile")
    public String responseListPosts(HttpServletRequest request, ModelMap modelMap) {
        return "public.profile.index";
    }

//    private void responseShopEntity(ModelMap modelMap) {
//        ShopEntity shopEntity = shopService.findShop();
//        modelMap.addAttribute("shopEntity", shopEntity);
//    }
}
