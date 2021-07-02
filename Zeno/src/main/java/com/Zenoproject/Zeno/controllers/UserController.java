package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.services.CartService;
import com.Zenoproject.Zeno.services.OrderService;
import com.Zenoproject.Zeno.services.RoleService;
import com.Zenoproject.Zeno.services.UserService;

@Controller
public class UserController {
	private RoleService roleService;
	private final CartService cartService;
	private final UserService userService;
	private final OrderService orderService;

	public UserController(RoleService roleService, UserService userService, CartService cartService,
			OrderService orderService) {
		this.roleService = roleService;
		this.userService = userService;
		this.cartService = cartService;
		this.orderService = orderService;
	}
}
