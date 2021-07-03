package com.Zenoproject.Zeno.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.Zenoproject.Zeno.models.Role;
import com.Zenoproject.Zeno.models.User;
import com.Zenoproject.Zeno.repositories.UserRepo;

@Service
public class UserDetailsServiceImplementation implements UserDetailsService {
	private final UserRepo userRepo;

	public UserDetailsServiceImplementation(UserRepo userRepo) {
		this.userRepo = userRepo;
	}

	@Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username);
        
        if(user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        
        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), getAuthorities(user));
    }
    
    // 2
    private List<GrantedAuthority> getAuthorities(User user){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for(Role role : user.getRoles()) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getName());
            authorities.add(grantedAuthority);
        }
        return authorities;
    }
}
