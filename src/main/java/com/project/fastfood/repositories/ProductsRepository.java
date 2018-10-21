package com.project.fastfood.repositories;

import com.project.fastfood.entities.CategoriesEntity;
import com.project.fastfood.entities.ProductsEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductsRepository extends JpaRepository<ProductsEntity, Integer> {
    Page<ProductsEntity> findAllByCategory_IdCategory(int category_id, Pageable pageable);

    ProductsEntity findByIdProductAndTypeEquals(int id, boolean isCombo);
}
