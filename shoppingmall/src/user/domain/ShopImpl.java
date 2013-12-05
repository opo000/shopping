package user.domain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import user.dto.GoodsDto;

@Component("shop")
public class ShopImpl implements Shop {

	private GoodsCatalog goodsCatalog;
	
	@Autowired
	public void setGoodsCatalog(GoodsCatalog goodsCatalog) {
		this.goodsCatalog = goodsCatalog;
	}

	@Override
	public List<GoodsDto> getSelectedList(List itemList) {
		// TODO Auto-generated method stub
		return goodsCatalog.getSelectedList(itemList);
	}

}
