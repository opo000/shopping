package user.domain;

import java.util.List;

import user.dto.GoodsDto;

public class ShopImpl implements Shop {

	private GoodsCatalog goodsCatalog;
	
	public void setGoodsCatalog(GoodsCatalog goodsCatalog) {
		this.goodsCatalog = goodsCatalog;
	}

	@Override
	public List<GoodsDto> getSelectedList(String item) {
		// TODO Auto-generated method stub
		return goodsCatalog.getSelectedList(item);
	}

}
