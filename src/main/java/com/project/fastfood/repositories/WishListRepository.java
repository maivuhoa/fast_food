package com.project.fastfood.repositories;

import com.project.fastfood.entities.WishListEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WishListRepository extends JpaRepository<WishListEntity, Integer> {
}
