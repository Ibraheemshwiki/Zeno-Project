package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.CartRepo;
import com.Zenoproject.Zeno.repositories.ItemRepo;
import com.Zenoproject.Zeno.repositories.OrderRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class CartService {
	private final CartRepo cartRepo;
	private final UserRepo userRepo;
	private final OrderRepo orderRepo;
	private final ItemRepo itemRepo;

	public CartService(CartRepo cartRepo, UserRepo userRepo, OrderRepo orderRepo, ItemRepo itemRepo) {
		this.cartRepo = cartRepo;
		this.userRepo = userRepo;
		this.orderRepo = orderRepo;
		this.itemRepo = itemRepo;
	}
}
