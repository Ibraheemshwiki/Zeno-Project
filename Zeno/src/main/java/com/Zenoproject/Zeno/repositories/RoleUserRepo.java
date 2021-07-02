package com.Zenoproject.Zeno.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.User_has_Role;

@Repository
public interface RoleUserRepo extends CrudRepository<User_has_Role, Long> {

}
