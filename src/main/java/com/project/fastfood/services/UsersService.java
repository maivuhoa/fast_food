package com.project.fastfood.services;

import com.project.fastfood.entities.UsersEntity;
import com.project.fastfood.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersService {
    @Autowired
    UsersRepository usersRepository;
    public void saveUser(UsersEntity userEntity) {
        usersRepository.save(userEntity);
    }
    public void updateUser(UsersEntity usersEntity) {
        usersRepository.delete(usersEntity);
        usersRepository.save(usersEntity);
    }

    public UsersEntity findUserByEmail(String email) {
        return usersRepository.findUsersEntityByEmail(email);
    }

    public UsersEntity findUserById(Integer id) {
        return usersRepository.findUsersEntityByIdUser(id);
    }
}
