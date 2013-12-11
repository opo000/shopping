package user.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import user.dto.GoodsDto;
import user.dto.UserDto;

@Component("shop")
public class ShopImpl implements Shop {

	private GoodsCatalog goodsCatalog;
	private UserCatalog userCatalog;
	
	@Autowired
	public void setGoodsCatalog(GoodsCatalog goodsCatalog) {
		this.goodsCatalog = goodsCatalog;
	}
	
	@Autowired
	public void setUserCatalog(UserCatalog userCatalog) {
		this.userCatalog = userCatalog;
	}	

	@Override
	public List<GoodsDto> getSelectedList(List itemList) {
		// TODO Auto-generated method stub
		return goodsCatalog.getSelectedList(itemList);
	}

	@Override
	public GoodsDto findItemByCode(String code) {
		// TODO Auto-generated method stub
		return goodsCatalog.findItemByCode(code);
	}

	@Override
	public String chkId(String id) {
		// TODO Auto-generated method stub
		return userCatalog.ckdId(id);
	}

	@Override
	public void registerUser(UserDto user) {
		// TODO Auto-generated method stub
		userCatalog.registerUser(user);
		
	}

	@Override
	public UserDto loginProcess(UserDto user, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return userCatalog.loginProcess(user, request);
	}
	
	
}
