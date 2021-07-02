package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.repositories.ItemRepo;
import com.Zenoproject.Zeno.repositories.OrderRepo;
import com.Zenoproject.Zeno.services.CartService;
import com.Zenoproject.Zeno.services.ItemService;
import com.Zenoproject.Zeno.services.OrderService;
import com.Zenoproject.Zeno.services.UserService;

@Controller
public class CartController {
	private final CartService cartService;
	private final UserService userService;
	private final OrderService orderService;
	private final ItemService itemService;

	public CartController(CartService cartService, UserService userService, OrderService orderService,
			ItemService itemService) {
		this.cartService = cartService;
		this.userService = userService;
		this.orderService = orderService;
		this.itemService = itemService;
	}
}
