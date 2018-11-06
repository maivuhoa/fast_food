package com.project.fastfood.controllers;

import com.project.fastfood.entities.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicProfileInformationController extends PublicSuperControler{
    private UsersEntity usersEntity;
    @GetMapping("/profile")
    public String index(HttpServletRequest request, ModelMap modelMap) {
        responseProfileIndex(modelMap);
        return "public.profile.index";
    }

    public void responseProfileIndex(ModelMap modelMap) {
        String email = getPrincipal();
        UsersEntity usersEntity = usersService.findUserByEmail(email);
        modelMap.addAttribute("usersEntity", usersEntity);
    }

    @PostMapping("/profile")
    public String register(ModelMap modelMap, @RequestParam("idUser") String idUser, @RequestParam("fullname") String fullname, @RequestParam("email") String email, @RequestParam("password") String password, @RequestParam("phone") String phone, @RequestParam("address") String address, @RequestParam("idRole") String role) {
        password = BCrypt.hashpw(password, BCrypt.gensalt());
        RolesEntity rolesEntity = rolesService.findRoleById(Integer.parseInt(role));
        usersEntity = new UsersEntity(Integer.parseInt(idUser), "", password, fullname, address, phone, email, 1, 0, rolesEntity);
        usersService.updateUser(usersEntity);
        modelMap.addAttribute("usersEntity", usersEntity);
        return "redirect:/profile";
    }
    @GetMapping("/profile/address")
    public String indexAddress(HttpServletRequest request, ModelMap modelMap) {
        responseProfileIndex(modelMap);
        return "public.profile.address";
    }
    @GetMapping("/profile/history")
    public String indexHistory(HttpServletRequest request, ModelMap modelMap) {
        responseProfileIndex(modelMap);
        return "public.profile.history";
    }
    @GetMapping("/profile/favorite")
    public String indexFavorite(HttpServletRequest request, ModelMap modelMap) {
        responseProfileIndex(modelMap);
        return "public.profile.favorite";
    }

}