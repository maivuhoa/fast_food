package com.project.fastfood.services;

import com.project.fastfood.entities.WardsEntity;
import com.project.fastfood.repositories.WardsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WardsServices {
    @Autowired
    WardsRepository wardsRepository;

    public List<WardsEntity> findWardsByDistrictId(String id) {
        return wardsRepository.findAllByDistrictIdDistrict(id);
    }

    public WardsEntity findWardById(String id) {
        return wardsRepository.findByIdWard(id);
    }
}
