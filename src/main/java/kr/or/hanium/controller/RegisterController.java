package kr.or.hanium.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.hanium.model.Certificate;
import kr.or.hanium.model.User;
import kr.or.hanium.service.UserService;

@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public String registerUser(Model model) {
		User user= new User();
		Certificate certificate=new Certificate();
		
		certificate.setUser(user);
		model.addAttribute("user", user);
		model.addAttribute("certificate", certificate);
		
		return "registerUser";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerUserPost(@Valid User user, BindingResult result, Model model) {
		
		System.out.println(result.getAllErrors());
		
		if (result.hasErrors()) {
			return "registerUser";
		}

		List<User> userList = userService.getAllUsers();

		/*
		 * for (int i = 0; i < userList.size(); i++) {
		 * 
		 * if (user.getUname().equals(userList.get(i).getUname())) { // 원래 있는 사용자를 입력했다면
		 * 
		 * model.addAttribute("usernameMsg", "username already exist");
		 * 
		 * return "registerUser"; } }
		 */
		
		
			user.setAuthority("ROLE_USER");
			userService.addUser(user);
		
		return "index";
	}

}
