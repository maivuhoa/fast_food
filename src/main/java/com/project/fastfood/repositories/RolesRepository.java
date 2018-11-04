package com.project.fastfood.repositories;

import com.project.fastfood.entities.RolesEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RolesRepository extends JpaRepository<RolesEntity, Integer> {
    RolesEntity findRolesEntitiesByIdRole(Integer id);
    RolesEntity findRolesEntitiesByName(String name);
}
