package com.Zenoproject.Zeno.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.Role;

@Repository
public interface RoleRepo extends CrudRepository<Role, Long> {
	List<Role> findAll();
	List<Role> findByName(String name);
}
