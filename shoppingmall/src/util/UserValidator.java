package util;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import user.dto.UserDto;

@Component("userValidator")   
public class UserValidator implements Validator {

	@Override 
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return UserDto.class.isAssignableFrom(arg0);  //arg0 must be userDto
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		UserDto user = (UserDto)arg0;
		
		if(user.getU_id() == null || user.getU_id().trim().isEmpty()){
			arg1.rejectValue("u_id", "required");
		}
		
		if(user.getU_pw() == null || user.getU_pw().trim().isEmpty()){
			arg1.rejectValue("u_pw", "required");
		}
	}
}
