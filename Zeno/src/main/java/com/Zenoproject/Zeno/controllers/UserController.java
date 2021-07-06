package com.Zenoproject.Zeno.controllers;

import java.security.Principal;
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
	private double total = 0;
	
	public UserController(AdminService adminService, UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.adminService = adminService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user, BindingResult result) {
		return "registrationPage.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "registrationPage.jsp";
		}
		userService.saveWithUserRole(user);
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
	public String home(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "homePage.jsp";
	}
	
	@RequestMapping("/homeaccessories")
	public String items(Principal principal,Model model) {
		List<Item> allItems = userService.allItems();
		model.addAttribute("items", allItems);
		String username = principal.getName();
		User u = userService.findByUsername(username);
		List<Item> items = u.getItems();
		model.addAttribute("cartSize", items.size());
		
		return "homeaccessories.jsp";
	}
	
	@RequestMapping("/add/{id}")
	public String addToCart(@PathVariable("id")Long id, Model model,Principal principal, @RequestParam("quantity")int num, HttpSession session) {
		Item item = userService.findItemByid(id);
		String username = principal.getName();
		User user = userService.findByUsername(username);
		Cart cart = userService.addItem(user, item, num);
		session.setAttribute("cart", cart);
		System.out.println(user.getItems().size());
		total += (item.getPrice()*cart.getQuantity());
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
	
	@RequestMapping("/admin/page")
	public String admin() {
		return "admin.jsp";
	}
	
	@RequestMapping("/orders")
	public String order() {
		return "orders.jsp";
	}
	
	
	@RequestMapping("/cart")
	public String cart(Model model, Principal principal) {
		String username = principal.getName();
		User u = userService.findByUsername(username);
		List<Cart> allCarts = userService.allCarts();
		model.addAttribute("carts", allCarts);
		model.addAttribute("thisUser", u);
		model.addAttribute("total", total);
		return "cartPage.jsp";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteFromCart(@PathVariable("id") Long id) {
		userService.deleteCart(id);
		return "redirect:/cart";
	}
	
	
	
}
