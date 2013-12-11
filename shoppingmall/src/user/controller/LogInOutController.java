package user.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContext;

import user.dto.UserDto;
import user.model.Shop;
import util.RegisterValidator;
import util.UserValidator;

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
	

	/* logProcess without not checking validation
	@RequestMapping(value="/loginProcess.action", method=RequestMethod.POST)
	public String loginProcess(UserDto user, HttpServletRequest request){
		 
		UserDto userDto = shop.loginProcess(user, request);
		
		return "goods/index";
	}
	*/

	//logProcess with not checking validation
	@RequestMapping(value="/loginProcess.action", method=RequestMethod.POST)
	public String loginProcess(@Valid UserDto user, BindingResult result, HttpServletRequest request){
		
		//new UserValidator().validate(user, result);   <--- if you use InitBinder annotation, you dont have to use this
		
		if(result.hasErrors()){
		    return "login";
		}
		
		try{
			UserDto userDto = shop.loginProcess(user, request);
			
				
		}catch(DataRetrievalFailureException err){
			result.reject("login");
			return "login";
		}
		
		return "goods/index";
		
		
	}	
	
	
	@RequestMapping(value="/logout.action", method=RequestMethod.GET)
	public String loginOut(HttpServletRequest request){
		
		request.getSession().invalidate();
		return "goods/index";
	}	
	
	
	@RequestMapping(value="/registerProcess.action", method=RequestMethod.POST)
	public String formProcess(@Valid UserDto user, BindingResult binding){
		
		if(binding.hasErrors()){
			return "registerForm";
		}
		
		try{
			shop.registerUser(user);	
		}catch(DataIntegrityViolationException err){
			binding.reject("duplicate");
			return "registerForm";
		}
		
		return "registerSuccess";
	}
	
	@InitBinder
	private void initBinder(WebDataBinder binder){
		binder.setValidator(new UserValidator());
	}
	
	@InitBinder
	protected void initBinder(ServletRequestDataBinder binder){
		
		DateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
		dformat.setLenient(false);
		
		binder.registerCustomEditor(Date.class, "u_birth", new CustomDateEditor(dformat, false));
		
		binder.setValidator(new RegisterValidator());
		
	}
	
	@ModelAttribute("JobList")
	protected Map referenceData(){
		
		String[] job = {"A","B","C","D","E","F","G","H","I","J","K","L","M"};
		
		Map mapJob = new HashMap();
		
		for(int i=0;i<job.length;i++){
			mapJob.put(job[i], job[i]);
		}
		
		return mapJob;
	}
	
	@ModelAttribute("userDto")
	protected Object formBacking(HttpServletRequest req){
		
		RequestContext ctx = new RequestContext(req);
		UserDto userDto = new UserDto();
		
		userDto.setU_id(ctx.getMessage("userDto.u_id.default"));
		userDto.setU_id(ctx.getMessage("userDto.u_name.default"));
		
		return userDto;
		
	}
	
}








