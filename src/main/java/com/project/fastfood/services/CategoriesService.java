package com.project.fastfood.services;

import com.project.fastfood.repositories.CategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoriesService {
    @Autowired
    CategoriesRepository categoriesRepository;
}
