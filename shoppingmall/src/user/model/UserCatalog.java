package user.model;

import javax.servlet.http.HttpServletRequest;

import user.dto.UserDto;

public interface UserCatalog {

	public String ckdId(String id);
	public void registerUser(UserDto user);
	public UserDto loginProcess(UserDto user, HttpServletRequest request);
}
