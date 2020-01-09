package kr.or.hanium.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.or.hanium.model.Recruitment;

@Repository
@Transactional
public class RecruitmentSearchDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Recruitment> getRecruitments(String param) {

		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Recruitment where recruitment_form = "+ param);
		List<Recruitment> recruitmentList =query.list();
		
		return recruitmentList;
		
		
	}

}
