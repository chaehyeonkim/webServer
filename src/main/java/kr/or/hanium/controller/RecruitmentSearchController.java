package kr.or.hanium.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.hanium.model.Recruitment;
import kr.or.hanium.service.RecruitmentService;

@Controller
public class RecruitmentSearchController {
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@RequestMapping("/searchRecruitment")
    public String getRecruitments(Model model, HttpServletRequest request) {

        String param = request.getParameter("searchParam");
        
        List<Recruitment> recruitments=recruitmentService.getSearchRecruitments(param);
        model.addAttribute("recruitments", recruitments);
        
        return "searchRecruitment";
    }

}

