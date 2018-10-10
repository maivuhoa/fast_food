package com.project.fastfood.controllers;

import com.project.fastfood.services.RolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @Autowired
    RolesService rolesService;

    @GetMapping
    public String getIndex() {
        return "index";
    }
}
