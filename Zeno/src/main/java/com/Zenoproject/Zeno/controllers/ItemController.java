package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.services.CartService;
import com.Zenoproject.Zeno.services.ItemService;
import com.Zenoproject.Zeno.services.UserService;

@Controller
public class ItemController {
	private final CartService cartService;
	private final UserService userService;
	private final ItemService itemService;

	public ItemController(CartService cartService, UserService userService, ItemService itemService) {
		this.cartService = cartService;
		this.userService = userService;
		this.itemService = itemService;
	}
}
