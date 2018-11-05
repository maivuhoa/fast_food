package com.project.fastfood.repositories;

import com.project.fastfood.entities.OrderDetailEntity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Integer> {
	public List<OrderDetailEntity> findByOrder_IdOrder(int orderId);
}
