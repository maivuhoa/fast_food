package com.project.fastfood.repositories;

import com.project.fastfood.entities.ComboEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;


@Repository
public interface ComboRepository extends JpaRepository<ComboEntity, Integer> {
    List<ComboEntity> findByParentProductTypeEquals(boolean isCombo);

    ComboEntity findByChildProduct_idProductAndParentProduct_IdProduct(int childProductId, int parentProductId);
}
