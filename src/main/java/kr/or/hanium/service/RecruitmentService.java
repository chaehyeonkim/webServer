package kr.or.hanium.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.hanium.dao.RecruitmentDao;
import kr.or.hanium.dao.RecruitmentSearchDao;
import kr.or.hanium.model.Recruitment;

@Service
public class RecruitmentService {

	@Autowired
	private RecruitmentDao recruitmentDao;
	
	@Autowired
	private RecruitmentSearchDao recruitmentSearchDao;

	public List<Recruitment> getRecruitments() {

		return recruitmentDao.getRecruitments();
	}

	public List<Recruitment> getSearchRecruitments(String work_location, String recruitment_school, List<Integer> companyId, String recruitment_form) {

		return recruitmentSearchDao.getRecruitments(work_location,recruitment_school,companyId,recruitment_form);
	}

}
