package com.project.fastfood.controllers;

import com.project.fastfood.entities.Cart;
import com.project.fastfood.entities.DistrictsEntity;
import com.project.fastfood.entities.OrdersEntity;
import com.project.fastfood.entities.WardsEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpSession;

@Controller
public class PublicOrderController extends PublicSuperControler {
	private OrdersEntity ordersEntity;

	@PostMapping("/order")
	public String index(@RequestParam("name") String name, @RequestParam("address") String address,
			@RequestParam("_district") String district, @RequestParam("ward") String ward,
			@RequestParam("phone") String phone, ModelMap modelMap) {
		WardsEntity wardsEntity = new WardsEntity();
		wardsEntity.setIdWard(ward);
		ordersEntity = new OrdersEntity(name, 0, address, phone, wardsEntity, null);
		ordersEntity.setCreateAt(new Timestamp(new Date().getTime()));
		responseOrderInfo(modelMap, ward, district);
		return "public.orders.index";
	}

	private void responseOrderInfo(ModelMap modelMap, String wardId, String districtId) {
		modelMap.addAttribute("order", ordersEntity);
		DistrictsEntity districtsEntity = districtsService.findDistrictById(districtId);
		modelMap.addAttribute("district", districtsEntity);
		WardsEntity _ward = wardsServices.findWardById(wardId);
		modelMap.addAttribute("ward", _ward);
		String destination = _ward.getName() + "," + districtsEntity.getName() + "," + "Đà Nẵng";
		double shipCost = ordersService.getShippingTax(destination);
		ordersEntity.setShipCost(shipCost);
		modelMap.addAttribute("ship_cost", shipCost);
	}

	@GetMapping("/order/save")
	public String saveOrder(HttpSession httpSession) {
		ordersService.saveOrder(ordersEntity, (Cart) httpSession.getAttribute("cart"));
		return "public.payment.index";
	}
}
