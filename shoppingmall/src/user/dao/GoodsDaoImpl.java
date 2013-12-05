package user.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import user.dto.GoodsDto;
import db.mybatis.GoodsManager;

@Component("goodsDao")
public class GoodsDaoImpl implements GoodsDao{

	@Override
	public List<GoodsDto> getSelectedList(List itemList) {
		// TODO Auto-generated method stub
		return GoodsManager.getSelectedList(itemList);
	}
}
