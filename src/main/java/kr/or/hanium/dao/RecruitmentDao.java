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
public class RecruitmentDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Recruitment> getRecruitments() {

		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Recruitment");
		List<Recruitment> recruitmentList =query.list();
		
		return recruitmentList;
		
		
	}

}
