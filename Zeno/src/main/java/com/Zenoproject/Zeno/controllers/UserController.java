package com.Zenoproject.Zeno.controllers;

import org.springframework.stereotype.Controller;

import com.Zenoproject.Zeno.services.AdminService;
import com.Zenoproject.Zeno.services.UserService;

@Controller
public class UserController {
	private final UserService userService;
	private final AdminService adminService;

	public UserController(AdminService adminService, UserService userService) {
		this.userService = userService;
		this.adminService = adminService;
	}
}
