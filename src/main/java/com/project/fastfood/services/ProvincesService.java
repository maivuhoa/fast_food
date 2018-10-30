package com.project.fastfood.services;

import com.project.fastfood.entities.ProductsEntity;
import com.project.fastfood.entities.ProvincesEntity;
import com.project.fastfood.repositories.ProvincesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProvincesService {
    @Autowired
    ProvincesRepository provincesRepository;

    public List<ProvincesEntity> findAllProvinces() {
        return provincesRepository.findAll();
    }
}
