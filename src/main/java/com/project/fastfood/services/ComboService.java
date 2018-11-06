package com.project.fastfood.services;

import com.project.fastfood.entities.ComboEntity;
import com.project.fastfood.entities.ProductsEntity;
import com.project.fastfood.repositories.ComboRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ComboService {
    @Autowired
    ComboRepository comboRepository;

    public List<ComboEntity> findByParentProductTypeEquals(boolean isCombo) {
        return comboRepository.findByParentProductTypeEquals(isCombo);
    }

    public ArrayList<ProductsEntity> findAllProductOfComboByIdCombo(int idCombo) {
        List<ComboEntity> comboEntities = findByParentProductTypeEquals(true);
        List<ComboEntity> list = new ArrayList<>();
        for(ComboEntity c : comboEntities) {
            if(c.getParentProduct().getIdProduct() == idCombo) {
                int childProductId = c.getChildProduct().getIdProduct();
                ComboEntity productOfCombo = comboRepository.findByChildProduct_idProductAndParentProduct_IdProduct(childProductId, idCombo);
                list.add(productOfCombo);
            }
        }
        return convertComboEntityToProductEntity(list);
    }

    private ArrayList<ProductsEntity> convertComboEntityToProductEntity(List<ComboEntity> comboEntities) {
        ArrayList<ProductsEntity> list = new ArrayList<>();
        for(ComboEntity c : comboEntities) {
            String name = c.getChildProduct().getName();
            ProductsEntity p = c.getChildProduct();
            list.add(p);
        }
        return list;
    }
}
