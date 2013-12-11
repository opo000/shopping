package user.dao;

import javax.servlet.http.HttpServletRequest;

import user.dto.UserDto;

public interface UserDao {

	public String ckdId(String id);
	public void registerUser(UserDto user);
	public UserDto loginProcess(UserDto user, HttpServletRequest request);
}
