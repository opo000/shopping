package user.model;

import java.util.List;

import user.dto.GoodsDto;
import user.dto.UserDto;

public interface Shop {

	public List<GoodsDto> getSelectedList(List itemList);
	public GoodsDto findItemByCode(String code);
	
	public String chkId(String id);
	public void registerUser(UserDto user);
}
