package com.Zenoproject.Zeno.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.Cart;

@Repository
public interface CartRepo extends CrudRepository<Cart, Long> {
	List<Cart> findAll();
}
