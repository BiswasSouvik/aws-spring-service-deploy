package com.sample.practice;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserDetailsServiceRepository extends JpaRepository<User, Integer> {
    Optional<User> findByUsername(String userName);
}