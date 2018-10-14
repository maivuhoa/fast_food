package com.project.fastfood.repositories;

import com.project.fastfood.entities.DistrictsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DistrictsRepository extends JpaRepository<DistrictsEntity, Integer> {
}
