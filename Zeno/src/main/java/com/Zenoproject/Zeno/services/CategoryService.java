package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.CategoryRepo;
import com.Zenoproject.Zeno.repositories.ItemRepo;

@Service
public class CategoryService {
	private final ItemRepo itemRepo;
	private final CategoryRepo categoryRepo;

	public CategoryService(ItemRepo itemRepo, CategoryRepo categoryRepo) {
		this.itemRepo = itemRepo;
		this.categoryRepo = categoryRepo;
	}
}
