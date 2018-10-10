package com.project.fastfood.services;

import com.project.fastfood.repositories.DistrictsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DistrictsService {
    @Autowired
    DistrictsRepository districtsRepository;
}
