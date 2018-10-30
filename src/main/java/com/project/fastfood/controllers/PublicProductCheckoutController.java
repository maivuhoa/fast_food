package com.project.fastfood.controllers;

import com.project.fastfood.entities.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PublicProductCheckoutController extends PublicSuperControler{
    @GetMapping("/checkout/index")
    public String index(ModelMap modelMap) {
        responseAllProvinces(modelMap);
        return "public.checkout.index";
    }

    private void responseAllProvinces(ModelMap modelMap) {
        List<DistrictsEntity> list = districtsService.findDistrictByProvinceId("48");
        modelMap.addAttribute("districts", list);
    }

    @PostMapping(value = "/checkout/district/{id}", consumes = "application/json", produces = "application/json")
    public @ResponseBody List<DistrictsEntity> responseDistrictsByProvince(@PathVariable("id") String id) {
        return districtsService.findDistrictByProvinceId(id);
    }


    @PostMapping(value = "/checkout/ward/{id}", consumes = "application/json", produces = "application/json")
    public @ResponseBody List<WardsEntity> responseWardsByDistrict(@PathVariable("id") String id) {
        return wardsServices.findWardsByDistrictId(id);
    }
}
