package com.project.fastfood.services;

import com.project.fastfood.entities.OrderDetailEntity;
import com.project.fastfood.repositories.OrderDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailService {
    @Autowired
    OrderDetailRepository orderDetailRepository;

    public void saveOrderDetail(List<OrderDetailEntity> list) {
        for(OrderDetailEntity o : list) {
            orderDetailRepository.save(o);
        }
    }
    
    public List<OrderDetailEntity> findAllOrderDetailByOrder(int orderId){
    	return orderDetailRepository.findByOrder_IdOrder(orderId);
    }
}
