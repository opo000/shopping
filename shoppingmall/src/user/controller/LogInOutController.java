package user.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import user.dto.UserDto;
import user.model.Shop;

@Component("logInOutController")
@RequestMapping
public class LogInOutController {

	private Shop shop;
	
	@Autowired
	public void setShop(Shop shop) {
		this.shop = shop;
	}
	
	@RequestMapping("/loginForm.action")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/registerForm.action")
	public String registerForm(){
		
		return "registerForm";
	}
	
	@RequestMapping("/idCheckForm.action")
	public ModelAndView idCheckForm(@RequestParam(value="u_id", required=false) String id){
		
		String result = shop.chkId(id);
		
		Map map = new HashMap();
		map.put("id1", id);
		map.put("id2", result);
		
		return new ModelAndView("idCheckForm", "idList", map);
	}
	
	@RequestMapping(value="/registerProcess.action", method=RequestMethod.POST)
	public String formProcess(UserDto user){
		
		
		System.out.println("user : " + user.getU_addr());
		System.out.println("user : " + user.getU_birth());
		System.out.println("user : " + user.getU_email());
		System.out.println("user : " + user.getU_id());
		System.out.println("user : " + user.getU_job());
		System.out.println("user : " + user.getU_name());
		System.out.println("user : " + user.getU_pw());
		System.out.println("user : " + user.getU_tel());
		
		
		
		shop.registerUser(user);
		
		return "registerSuccess";
	}
	
	@InitBinder
	protected void initBinder(ServletRequestDataBinder binder){
		
		DateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
		dformat.setLenient(false);
		
		binder.registerCustomEditor(Date.class, "u_birth", new CustomDateEditor(dformat, false));
	}
	
}








