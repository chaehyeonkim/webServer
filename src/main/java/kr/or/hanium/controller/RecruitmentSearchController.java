package kr.or.hanium.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.hanium.model.Company;
import kr.or.hanium.model.Recruitment;
import kr.or.hanium.service.CompanyService;
import kr.or.hanium.service.RecruitmentService;

@Controller
public class RecruitmentSearchController {
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("/searchRecruitment")
    public String getRecruitments(Model model, HttpServletRequest request) {

        String work_location = request.getParameter("work_location");
        String recruitment_school = request.getParameter("recruitment_school");
        String company_scale = request.getParameter("company_scale");
        String recruitment_form = request.getParameter("recruitment_form");
        
            
        
        List<Recruitment> recruitments=recruitmentService
        		.getSearchRecruitments(work_location,recruitment_school,company_scale,recruitment_form);
       model.addAttribute("recruitments", recruitments);
       
       List<Company> companyInfo = null;
       List<Company> company=null;
       
        for(int i=0;i<recruitments.size();i++) {
        	// 해당 recruitment의 id를 가지고 company 정보 가져오기
            companyInfo = companyService.getCompanyInfo(recruitments.get(i).getCompany());
            company.add((Company) companyInfo);
        }
        
        model.addAttribute("company", company);
        
        for(int i=0;i<recruitments.size();i++) {
        	System.out.println(recruitments.get(i).getRecruit_id());
        }
        
        for(int i=0;i<companyInfo.size();i++) {
        	System.out.println(companyInfo.get(i));
        }
        
        return "searchRecruitment";
    }

}

