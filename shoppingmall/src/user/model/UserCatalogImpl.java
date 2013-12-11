package user.model;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import user.dao.UserDao;
import user.dto.UserDto;

@Component("userCatalog")
public class UserCatalogImpl implements UserCatalog {

	private UserDao userDao;
	
	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public String ckdId(String id) {
		// TODO Auto-generated method stub
		return userDao.ckdId(id);
	}

	@Override
	public void registerUser(UserDto user) {
		// TODO Auto-generated method stub
		userDao.registerUser(user);
	}

	@Override
	public UserDto loginProcess(UserDto user, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return userDao.loginProcess(user, request);
	}
	
	
}
