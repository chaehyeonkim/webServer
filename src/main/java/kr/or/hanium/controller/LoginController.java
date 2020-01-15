package kr.or.hanium.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error", required=false) String error,
			@RequestParam(value="logout", required=false) String logout ,Model model, HttpServletRequest req) {
		
		//System.out.println(error);
		System.out.println(model);
		System.out.println(req.getParameter("uemail")+" "+req.getParameter("upasswd"));
		if(error != null) {
			model.addAttribute("errorMsg", "Invalid username and password");
		}
		if(logout != null) {
			model.addAttribute("logoutMsg", "You have been logged out successfully");
		}
		return "login";
	}

}
