package com.project.fastfood.controllers;

import com.project.fastfood.entities.*;
import org.springframework.http.HttpRequest;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class PublicRegisterController extends PublicSuperControler{
    private UsersEntity usersEntity;

    @GetMapping("/register")
    public String index(HttpServletRequest request, ModelMap modelMap) {
        responseRegister(modelMap);
        return "public.register.index";
    }

    public void responseRegister(ModelMap modelMap) {
        List<ProvincesEntity> listProvinces = provincesService.findAllProvinces();
        modelMap.addAttribute("listProvinces", listProvinces);
    }

    @PostMapping("/register")
    public String register(ModelMap modelMap, @RequestParam("fullname") String fullname, @RequestParam("email") String email, @RequestParam("password") String password, @RequestParam("phone") String phone, @RequestParam("address") String address, @RequestParam("role") String role) {
        password = BCrypt.hashpw(password, BCrypt.gensalt());
        RolesEntity rolesEntity = rolesService.findRoleById(Integer.parseInt(role));
        usersEntity = new UsersEntity(0, "", password, fullname, address, phone, email, 1, 0, rolesEntity);
        usersService.saveUser(usersEntity);
        modelMap.addAttribute("usersEntity", usersEntity);
        return "public.profile.index";
    }
//    @PostMapping("/load-district")
//    public void index(@RequestParam("id") String id, PrintWriter out) {
//        String html = "";
//        if(!"0".equals(id)) {
//            List<DistrictsEntity> listDistricts = districtsService.findDistrictByProvinceId(id);
//            for (DistrictsEntity obj : listDistricts) {
//                html += "\n<option value=\"" + obj.getIdDistrict() + "\">" + obj.getName() + "</option>";
//            }
//        }
//        out.print(html);
//    }



}
