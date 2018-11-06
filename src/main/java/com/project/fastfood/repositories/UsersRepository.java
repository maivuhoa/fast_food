package com.project.fastfood.repositories;

import com.project.fastfood.entities.UsersEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepository extends JpaRepository<UsersEntity, Integer> {
    UsersEntity findUsersEntityByEmail(String email);
    UsersEntity findUsersEntityByIdUser(Integer id);
    void deleteByIdUser(int id);
}
