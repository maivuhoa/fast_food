package com.project.fastfood.repositories;

import com.project.fastfood.entities.WardsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WardsRepository extends JpaRepository<WardsEntity, Integer> {
    List<WardsEntity> findAllByDistrictIdDistrict(String id);

    WardsEntity findByIdWard(String id);
}
