package user.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component("indexController")
@RequestMapping
public class IndexController {

	@RequestMapping("/index.action")
	public String index(){
		return "/goods/index";
	}
}
