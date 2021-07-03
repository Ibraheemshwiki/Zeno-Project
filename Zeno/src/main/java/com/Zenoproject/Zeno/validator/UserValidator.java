package com.Zenoproject.Zeno.validator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.Zenoproject.Zeno.models.User;

@Component
public class UserValidator implements Validator {

	@Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }
    
    // 2
    @Override
    public void validate(Object object, Errors errors) {
        User user = (User) object;
        
        if (!user.getCpassword().equals(user.getPassword())) {
            // 3
            errors.rejectValue("cpassword", "Match");
        }         
    }
	
}
