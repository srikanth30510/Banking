package com.klu.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.entity.Users;

public interface HomeRep extends JpaRepository<Users, Long>{

}
