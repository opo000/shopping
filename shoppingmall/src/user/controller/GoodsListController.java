package user.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.domain.Shop;

@Controller
public class GoodsListController {
	
	private Shop shop;
	
	public void setShop(Shop shop) {
		this.shop = shop;
	}

	@RequestMapping("/goods_list.action")
	public ModelAndView goods_list(String item){
		
		List result = shop.getSelectedList(item);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("goods/goods_list");
		mav.addObject("result", result);
		
		return mav;
	}
}
