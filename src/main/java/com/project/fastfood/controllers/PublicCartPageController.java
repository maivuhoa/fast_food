package com.project.fastfood.controllers;

import com.project.fastfood.entities.Cart;
import com.project.fastfood.entities.Item;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class PublicCartPageController extends PublicSuperControler{
    @PostMapping(value = "/add-cart", consumes = "application/json", produces = "application/json")
    public @ResponseBody int addCart(@RequestBody Item item, HttpSession session)  {
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

    @PostMapping(value = "/remove-cart")
    public @ResponseBody String removeCart(@RequestParam Integer id, HttpSession session) {
        Cart.getInstance().removeProduct(id);
        session.setAttribute("cart", Cart.getInstance());
        String response = Cart.getInstance().getQuantityTotal() + "|" + Cart.getInstance().getAmountTotal();
        return response;
    }

    @PostMapping(value = "/update_cart")
    public @ResponseBody String updateCart(@RequestParam("id") Integer id, @RequestParam("quantity") Integer quantity, HttpSession session) {
        Cart.getInstance().updateCart(id, quantity);
        session.setAttribute("cart", Cart.getInstance());
        String response = Cart.getInstance().getQuantityTotal() + "|" + Cart.getInstance().getAmountTotal();
        return response;
    }

    public boolean checkCartExist(HttpSession session) {
        return session.getAttribute("cart") == null;
    }
}
