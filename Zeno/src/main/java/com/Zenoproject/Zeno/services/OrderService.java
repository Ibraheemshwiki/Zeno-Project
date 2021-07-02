package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.CartRepo;
import com.Zenoproject.Zeno.repositories.OrderRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class OrderService {
	private final OrderRepo orderRepo;
	private final CartRepo cartRepo;
	private final UserRepo userRepo;

	public OrderService(OrderRepo orderRepo, CartRepo cartRepo, UserRepo userRepo) {
		this.orderRepo = orderRepo;
		this.cartRepo = cartRepo;
		this.userRepo = userRepo;
	}
}
