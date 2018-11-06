package com.project.fastfood.services;

import com.project.fastfood.entities.PostsEntity;
import com.project.fastfood.repositories.PostsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PostsService {
    @Autowired
    PostsRepository postsRepository;

    public PostsEntity findPostById(int id) {
        return postsRepository.findById(id).get();
    }

    public List<PostsEntity> findAllPostNewest() {
        Pageable pageable = new PageRequest(0, 6);
        Page<PostsEntity> postsEntities = postsRepository.findAllByTypeEqualsOrderByIdPostDesc(1, pageable);
        List<PostsEntity> posts = new ArrayList<>(postsEntities.getSize());
        for (PostsEntity postsEntity : postsEntities) {
            posts.add(postsEntity);
        }
        return posts;
    }

    public List<PostsEntity> findAllByType(Integer type) {
        return postsRepository.findAllByType(type);
    }
}
