package com.project.fastfood.services;

import com.project.fastfood.repositories.RolesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RolesService {
    @Autowired
    RolesRepository rolesRepository;
}
