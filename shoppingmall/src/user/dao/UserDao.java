package user.dao;

import user.dto.UserDto;

public interface UserDao {

	public String ckdId(String id);
	public void registerUser(UserDto user);
}
