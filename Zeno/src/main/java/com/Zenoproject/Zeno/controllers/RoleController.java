package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.services.RoleService;
import com.Zenoproject.Zeno.services.UserService;

@Controller
public class RoleController {
	private RoleService roleService;
	private UserService userService;

	public RoleController(RoleService roleService, UserService userService) {
		this.roleService = roleService;
		this.userService = userService;
	}

}
