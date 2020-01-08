package kr.or.hanium.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.hanium.model.Recruitment;
import kr.or.hanium.service.RecruitmentService;

@Controller
public class RecruitmentController {
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@RequestMapping("/recruitments")
	public String getRecruitments(Model model) {
		
		List<Recruitment> recruitments=recruitmentService.getRecruitments();
		model.addAttribute("recruitments", recruitments);
		
		return "recruitments";
	}

}
