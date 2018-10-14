package com.project.fastfood.repositories;

import com.project.fastfood.entities.WardsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WardsRepository extends JpaRepository<WardsEntity, Integer> {
}
