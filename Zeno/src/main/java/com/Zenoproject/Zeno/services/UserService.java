package com.Zenoproject.Zeno.services;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.models.Item;
import com.Zenoproject.Zeno.models.User;
import com.Zenoproject.Zeno.repositories.CartRepo;
import com.Zenoproject.Zeno.repositories.CategoryRepo;
import com.Zenoproject.Zeno.repositories.ItemRepo;
import com.Zenoproject.Zeno.repositories.RoleRepo;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class UserService {
	private final RoleRepo roleRepo;
	private final CartRepo cartRepo;
	private final UserRepo userRepo;
	private final CategoryRepo categoryRepo;
	private final ItemRepo itemRepo;
	private final BCryptPasswordEncoder bCryptPasswordEncoder;

	public UserService(RoleRepo roleRepo, UserRepo userRepo, CartRepo cartRepo,
			CategoryRepo categoryRepo, ItemRepo itemRepo, BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.roleRepo = roleRepo;
		this.userRepo = userRepo;
		this.cartRepo = cartRepo;
		this.categoryRepo = categoryRepo;
		this.itemRepo = itemRepo;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	public void saveWithUserRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepo.findByName("ROLE_USER"));
		userRepo.save(user);
	}
	
	public void saveUserWithAdminRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepo.findByName("ROLE_ADMIN"));
		userRepo.save(user);
	}
	
	public User findByUsername(String username) {
		return userRepo.findByUsername(username);
	}
	
	public List<Item> allItems(){
		return itemRepo.findAll();
	}
	
	public List<Item> findItemsByCategoryId(Long id){
		return itemRepo.findByCategoryId(id);
	}
	
	public Item findItemByid(Long id) {
		Item item = itemRepo.findById(id).orElse(null);
		return item;
	}
	
 }
