package com.Zenoproject.Zeno.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Zenoproject.Zeno.models.Cart;
import com.Zenoproject.Zeno.models.Item;
import com.Zenoproject.Zeno.models.User;
import com.Zenoproject.Zeno.services.AdminService;
import com.Zenoproject.Zeno.services.UserService;
import com.Zenoproject.Zeno.validator.UserValidator;

@Controller
public class UserController {
	private final UserService userService;
	private final AdminService adminService;
	private UserValidator userValidator;
	private List<Item> newList = new ArrayList<>();
	private Cart newCart = new Cart();
	private double total = 0;
	
	public UserController(AdminService adminService, UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.adminService = adminService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user) {
		return "registrationPage.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			HttpSession session) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "registrationPage.jsp";
		}
		userService.saveUserWithAdminRole(user);
		return "redirect:/login";

	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "loginPage.jsp";
	}

	@RequestMapping("/admin")
    public String adminPage(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "adminPage.jsp";
    }
	
	@RequestMapping(value = { "/", "/home" })
	public String home(Principal principal, Model model, HttpSession session) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		session.setAttribute("user", userService.findByUsername(username));
		return "homePage.jsp";
	}
	
	@RequestMapping("/homeaccessories")
	public String items(Model model, HttpSession session) {
		List<Item> allItems = userService.allItems();
		model.addAttribute("items", allItems);
		model.addAttribute("cartSize", newList.size());
		
		model.addAttribute("cartInfo", newCart.getItems());
		return "homeaccessories.jsp";
	}
	
	@RequestMapping("/add/{id}")
	public String addToCart(@PathVariable("id")Long id, Model model, HttpSession session) {
		Item item = userService.findItemByid(id);
		User user = (User) session.getAttribute("user");
		total += item.getPrice();
		newList.add(item);
		newCart.setItems(newList);
		newCart.setUser(user);
		
		
		return "redirect:/homeaccessories"; 
		
	}
	
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
	return "redirect:/registration";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "homePage.jsp";
	}
	
	@RequestMapping("/accessories")
	public String accessories() {
		return "accessories.jsp";
	}
	
	
	
	@RequestMapping("/makeup")
	public String makeup() {
		return "makeup.jsp";
	}
	
	
	@RequestMapping("/cart")
	public String cart(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("thisUser", user);
		model.addAttribute("total", total);
		model.addAttribute("cartInfo", newCart.getItems());
		return "cartPage.jsp";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteFromCart(@PathVariable("id") Long id) {
		Item item = userService.findItemByid(id);
		newList.remove(id);
		newCart.setItems(newList);
		return "redirect:/cart";
	}
	
	
}
