package com.project.fastfood.services;

import com.project.fastfood.entities.ShopEntity;
import com.project.fastfood.repositories.ShopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopService {
    @Autowired
    ShopRepository shopRepository;

    public ShopEntity findShop() {
        return shopRepository.findAll().get(0);
    }
}
