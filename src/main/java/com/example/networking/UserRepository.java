package com.example.networking;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

//repository

public interface UserRepository extends JpaRepository<User , Long> {
    Optional<User> findByEmail(String email);

}
