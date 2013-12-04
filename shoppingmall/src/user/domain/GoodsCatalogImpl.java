package user.domain;

import java.util.List;

import user.dao.GoodsDao;

public class GoodsCatalogImpl implements GoodsCatalog {

	private GoodsDao goodsDao;
	
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public List getSelectedList(String item) {
		// TODO Auto-generated method stub
		return goodsDao.getSelectedList(item);
	}
}
