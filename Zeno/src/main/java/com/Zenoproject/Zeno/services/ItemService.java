package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.CartRepo;
import com.Zenoproject.Zeno.repositories.ItemRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class ItemService {
	private final CartRepo cartRepo;
	private final UserRepo userRepo;
	private final ItemRepo itemRepo;

	public ItemService(CartRepo cartRepo, UserRepo userRepo, ItemRepo itemRepo) {
		this.cartRepo = cartRepo;
		this.userRepo = userRepo;
		this.itemRepo = itemRepo;
	}
}
