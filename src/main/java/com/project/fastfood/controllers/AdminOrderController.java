package com.project.fastfood.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fastfood.entities.OrderDetailEntity;
import com.project.fastfood.entities.OrdersEntity;
import com.project.fastfood.entities.ProductsEntity;

import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class AdminOrderController extends AdminSupperController {
	@GetMapping("/admin/orders")
	public String index(ModelMap modelMap) {
		List<OrdersEntity> orders = ordersService.findAll();
		modelMap.addAttribute("orders", orders);
		return "admin.orders.index";
	}
	
	@GetMapping("/admin/order_detail")
    public String viewOrderDetail() {
        return "admin.order_detail.index";
    }
}
