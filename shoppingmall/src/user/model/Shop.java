package user.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import user.dto.GoodsDto;
import user.dto.UserDto;

public interface Shop {

	public List<GoodsDto> getSelectedList(List itemList);
	public GoodsDto findItemByCode(String code);
	
	public String chkId(String id);
	public void registerUser(UserDto user);
	public UserDto loginProcess(UserDto user, HttpServletRequest request);
}
