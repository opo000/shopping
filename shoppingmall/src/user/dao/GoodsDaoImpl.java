package user.dao;

import java.util.List;

import db.mybatis.GoodsManager;
import user.dto.GoodsDto;

public class GoodsDaoImpl implements GoodsDao{

	@Override
	public List<GoodsDto> getSelectedList(String item) {
		// TODO Auto-generated method stub
		return GoodsManager.getSelectedList(item);
	}
}
