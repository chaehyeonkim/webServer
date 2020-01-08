package kr.or.hanium.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.hanium.dao.RecruitmentDao;
import kr.or.hanium.model.Recruitment;

@Service
public class RecruitmentService {
	
	@Autowired
	private RecruitmentDao recruitmentDao;

	public List<Recruitment> getRecruitments() {
		
		return recruitmentDao.getRecruitments();
	}

}
