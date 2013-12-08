package user.dao;

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
	
}
