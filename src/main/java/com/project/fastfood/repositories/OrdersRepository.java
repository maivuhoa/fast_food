package com.project.fastfood.repositories;

import com.project.fastfood.entities.OrdersEntity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OrdersRepository extends JpaRepository<OrdersEntity, Integer> {
}
