package com.Zenoproject.Zeno.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	
	User findByUsername(String username);
}
