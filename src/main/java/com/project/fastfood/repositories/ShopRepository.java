package com.project.fastfood.repositories;

import com.project.fastfood.entities.ShopEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShopRepository extends JpaRepository<ShopEntity, Integer> {
}
