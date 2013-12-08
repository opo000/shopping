package user.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import user.dao.GoodsDao;
import user.dto.GoodsDto;

@Component("goodsCatalog")
public class GoodsCatalogImpl implements GoodsCatalog {

	private GoodsDao goodsDao;
	
	@Autowired
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public List getSelectedList(List itemList) {
		// TODO Auto-generated method stub
		return goodsDao.getSelectedList(itemList);
	}

	@Override
	public GoodsDto findItemByCode(String code) {
		// TODO Auto-generated method stub
		return goodsDao.findItemByCode(code);
	}
}
