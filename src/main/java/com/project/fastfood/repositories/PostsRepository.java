package com.project.fastfood.repositories;

import com.project.fastfood.entities.PostsEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostsRepository extends JpaRepository<PostsEntity, Integer> {
    Page<PostsEntity> findAllByOrderByIdPostDesc(Pageable pageable);
    List<PostsEntity> findAllByType(Integer type);
}
