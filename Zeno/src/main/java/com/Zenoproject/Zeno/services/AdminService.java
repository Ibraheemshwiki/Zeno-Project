package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.CartRepo;
import com.Zenoproject.Zeno.repositories.CategoryRepo;
import com.Zenoproject.Zeno.repositories.ItemRepo;
import com.Zenoproject.Zeno.repositories.RoleRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class AdminService {
	private final RoleRepo roleRepo;
	private final CartRepo cartRepo;
	private final UserRepo userRepo;
	private final CategoryRepo categoryRepo;
	private final ItemRepo itemRepo;

	public AdminService(RoleRepo roleRepo, UserRepo userRepo, CartRepo cartRepo,
			CategoryRepo categoryRepo, ItemRepo itemRepo) {
		this.roleRepo = roleRepo;
		this.userRepo = userRepo;
		this.cartRepo = cartRepo;
		this.categoryRepo = categoryRepo;
		this.itemRepo = itemRepo;
	}
}
