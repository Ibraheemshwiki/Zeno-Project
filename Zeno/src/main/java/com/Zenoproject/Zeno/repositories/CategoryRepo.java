package com.Zenoproject.Zeno.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.Category;

@Repository
public interface CategoryRepo extends CrudRepository<Category, Long> {

}
