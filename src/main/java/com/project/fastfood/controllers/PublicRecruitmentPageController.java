package com.project.fastfood.controllers;

import com.project.fastfood.entities.PostsEntity;
import com.project.fastfood.entities.ShopEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicRecruitmentPageController extends PublicSuperControler{
    @GetMapping("/recruitment")
    public String responseListPosts(HttpServletRequest request, ModelMap modelMap) {
        responsePostRecruitment(modelMap);
        responseShopEntity(modelMap);
        return "public.recruitment.index";
    }

    private void responsePostRecruitment(ModelMap modelMap) {
        List<PostsEntity> postsRestaurant = postsService.findAllByType(1);
        modelMap.addAttribute("postsRestaurant", postsRestaurant);
        List<PostsEntity> postsOffice = postsService.findAllByType(2);
        modelMap.addAttribute("postsOffice", postsOffice);
    }

    private void responseShopEntity(ModelMap modelMap) {
        ShopEntity shopEntity = shopService.findShop();
        modelMap.addAttribute("shopEntity", shopEntity);
    }
}
