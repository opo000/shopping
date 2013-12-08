package user.model;

import user.dto.UserDto;

public interface UserCatalog {

	public String ckdId(String id);
	public void registerUser(UserDto user);
}
