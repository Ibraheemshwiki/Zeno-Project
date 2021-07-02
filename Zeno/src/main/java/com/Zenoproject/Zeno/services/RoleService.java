package com.Zenoproject.Zeno.services;

import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.repositories.RoleRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class RoleService {
	private RoleRepo roleRepo;
	private UserRepo userRepo;

	public RoleService(RoleRepo roleRepo, UserRepo userRepo) {
		this.roleRepo = roleRepo;
		this.userRepo = userRepo;
	}
}
