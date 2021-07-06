package com.Zenoproject.Zeno.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.Item;

@Repository
public interface ItemRepo extends CrudRepository<Item, Long> {
	List<Item> findAll();
	List<Item> findByCategoryId(Long id);
}
