package com.niit.regalo.controller;


import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.niit.regalo.model.User;
import com.niit.regalo.service.UserService;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView addData() {
		System.out.println("adduser page display");
		return new ModelAndView("register", "adduser", new User());
	}

	
	@RequestMapping(value="/register" , method=RequestMethod.POST)
	public String addData(@Valid @ModelAttribute("adduser") User u,BindingResult result, Model model) {

		//List<User> list =  pmd.getAllUser();
	System.out.println("post method adduser");
if (result.hasErrors()) {
		
		return "register";
	}
		else{
	
	userService.addUser(u);
		return "userAdded";
	}
		
}
	
/*	 @RequestMapping(value="/login", method = RequestMethod.GET)
	 public String login() {
	 
	  return "login";
	 
	 }
	 
	 @RequestMapping(value="/fail2login", method = RequestMethod.GET)
	 public ModelAndView loginerror(ModelMap model) {
	 
	
	  return new ModelAndView("login","error",true);
	 
	 }

	
	 @RequestMapping(value="/logout", method = RequestMethod.GET)
	 public ModelAndView logout(HttpServletRequest request,HttpServletResponse response)
	 {
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 if (auth != null) {
		 new SecurityContextLogoutHandler().logout(request, response, auth);
		 }
	 
	  return new ModelAndView("login","logoutmsg", "Logged Out Successfully");
	 
	 }
	 @RequestMapping(value = "/welcome", method = RequestMethod.GET)
	    public String printWelcome(ModelMap model, Principal principal) {

	     //   String name = principal.getName();
	     //   model.addAttribute("username", name);
	     //   System.out.println(name);
	        return "index";

	    }*/
	
}
