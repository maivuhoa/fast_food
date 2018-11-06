package com.project.fastfood.services;

import com.project.fastfood.entities.DistrictsEntity;
import com.project.fastfood.repositories.DistrictsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistrictsService {
    @Autowired
    DistrictsRepository districtsRepository;

    public List<DistrictsEntity> findDistrictByProvinceId(String id) {
        return districtsRepository.findAllByProvinceIdProvince(id);
    }

    public DistrictsEntity findDistrictById(String id) {
        return districtsRepository.findByIdDistrict(id);
    }
}
