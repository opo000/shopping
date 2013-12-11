package user.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import user.dto.UserDto;
import db.mybatis.UserManager;

@Component("userDao")
public class UserDaoImpl implements UserDao{

	@Override
	public String ckdId(String id) {
		// TODO Auto-generated method stub
		return UserManager.chkId(id);
	}

	@Override
	public void registerUser(UserDto user) {
		// TODO Auto-generated method stub
		UserManager.registerUser(user);
	}

	@Override
	public UserDto loginProcess(UserDto user, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return UserManager.loginProcess(user, request);
	}	
	
	
	
}
