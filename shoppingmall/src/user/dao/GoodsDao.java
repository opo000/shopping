package user.dao;

import java.util.List;
import user.dto.GoodsDto;

public interface GoodsDao {
	
	public List<GoodsDto> getSelectedList(List itemList);

}
