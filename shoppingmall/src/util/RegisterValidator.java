package util;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import user.dto.UserDto;

public class RegisterValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return UserDto.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "u_id", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "u_name", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "u_pw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "u_tel", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "u_email", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "u_addr", "required");
		
		if(arg1.hasErrors()){
			arg1.reject("input");
		}
		
	}	
}
