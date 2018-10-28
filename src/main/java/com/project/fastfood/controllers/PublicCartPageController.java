package com.project.fastfood.controllers;

import com.project.fastfood.entities.Cart;
import com.project.fastfood.entities.Item;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class PublicCartPageController extends PublicSuperControler{
    @PostMapping(value = "/add-cart", consumes = "application/json", produces = "application/json")
    public @ResponseBody int addCart(@RequestBody Item item, HttpSession session)  {
        System.out.println("image:" + item.getProduct().getImage());
        Cart.getInstance().addToCart(item.getProduct(), item.getQuantity());
       session.setAttribute("cart", Cart.getInstance());

       return Cart.getInstance().getQuantityTotal();
    }

    @GetMapping("/cart")
    public String viewCart(HttpSession httpSession) {
        if(checkCartExist(httpSession))
            httpSession.setAttribute("cart", Cart.getInstance());
        return "public.cart.index";
    }


    public boolean checkCartExist(HttpSession session) {
        return session.getAttribute("cart") == null;
    }
}
