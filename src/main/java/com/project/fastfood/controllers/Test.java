package com.project.fastfood.controllers;

import com.project.fastfood.services.RolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Test {
    @Autowired
    RolesService rolesService;

    @GetMapping("/categories")
    public String viewCategory() {
        return "public.category.index";
    }
    @GetMapping("/carts")
    public String viewCart() {
        return "public.cart.index";
    }
    @GetMapping("/profile")
    public String viewProfile() {
        return "public.profile.index";
    }
    @GetMapping("/discount")
    public String viewDiscount() {
        return "public.discount.index";
    }
    @GetMapping("/wish-list")
    public String viewWishList() {
        return "public.wish_list.index";
    }
    @GetMapping("/about")
    public String viewAbout() {
        return "public.about.index";
    }
    @GetMapping("/register")
    public String viewRegister() {
        return "public.register.index";
    }
    @GetMapping("/ship-address")
    public String viewShipAddress() {
        return "public.ship_address.index";
    }
}
