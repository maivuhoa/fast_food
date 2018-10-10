package com.project.fastfood.services;

import com.project.fastfood.repositories.WardsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WardsServices {
    @Autowired
    WardsRepository wardsRepository;
}
