package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.services.CategoryService;
import com.Zenoproject.Zeno.services.ItemService;

@Controller
public class CategoryController {
	private final ItemService itemService;
	private final CategoryService categoryService;

	public CategoryController(ItemService itemService, CategoryService categoryService) {
		this.itemService = itemService;
		this.categoryService = categoryService;
	}
}
