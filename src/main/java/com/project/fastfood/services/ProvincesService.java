package com.project.fastfood.services;

import com.project.fastfood.repositories.ProvincesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProvincesService {
    @Autowired
    ProvincesRepository provincesRepository;
}
