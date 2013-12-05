package user.domain;

import java.util.List;

import user.dto.GoodsDto;

public interface Shop {

	public List<GoodsDto> getSelectedList(List itemList);
	
}
