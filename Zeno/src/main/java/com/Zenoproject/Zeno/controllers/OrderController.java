package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.services.CartService;
import com.Zenoproject.Zeno.services.OrderService;
import com.Zenoproject.Zeno.services.UserService;

@Controller
public class OrderController {
	private final OrderService orderService;
	private final CartService cartService;
	private final UserService userService;

	public OrderController(OrderService orderService, CartService cartService, UserService userService) {
		this.orderService = orderService;
		this.cartService = cartService;
		this.userService = userService;
	}
}
