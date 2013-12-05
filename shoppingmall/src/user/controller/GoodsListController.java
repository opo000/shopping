package user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.domain.Shop;

@Component("goodsListController")
@Controller
public class GoodsListController {
	
	private Shop shop;
	
	@Autowired
	public void setShop(Shop shop) {
		this.shop = shop;
	}

	@RequestMapping("/goods_list.action")
	public ModelAndView goods_list(String item){
		
		List result = shop.getSelectedList(getPart(item));
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("goods/goods_list");
		mav.addObject("result", result);
		
		return mav;
	}
	
	protected List getPart(String item){
		
		List result = new ArrayList();
		
		if(item.equals("bag")){
			result.add("BA");
		}else if(item.equals("hat")){
			result.add("HA");
		}else if(item.equals("shoes")){
			result.add("FW");
		}else if(item.equals("jewelry")){
			result.add("JN");
			result.add("JE");
			result.add("JA");
			result.add("JR");
			result.add("SC");
		}else if(item.equals("others")){
			result.add("SB");
			result.add("SH");
			result.add("SO");
		}
		
		return result;
	}	
}









