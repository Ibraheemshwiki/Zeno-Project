package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.CartRepo;
import com.Zenoproject.Zeno.repositories.OrderRepo;
import com.Zenoproject.Zeno.repositories.RoleRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class UserService {
	private RoleRepo roleRepo;
	private final CartRepo cartRepo;
	private final UserRepo userRepo;
	private final OrderRepo orderRepo;

	public UserService(RoleRepo roleRepo, UserRepo userRepo, CartRepo cartRepo, OrderRepo orderRepo) {
		this.roleRepo = roleRepo;
		this.userRepo = userRepo;
		this.cartRepo = cartRepo;
		this.orderRepo = orderRepo;
	}
}
