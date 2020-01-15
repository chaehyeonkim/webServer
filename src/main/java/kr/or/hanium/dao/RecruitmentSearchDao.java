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
	public List<Recruitment> getRecruitments(String work_location, String recruitment_school, String company_scale, String recruitment_form) {

		Session session=sessionFactory.getCurrentSession();
		String queryString = "";

	      queryString += "from Recruitment ";

	      if(work_location.equals("전국") && recruitment_school.equals("전체") && recruitment_form.equals("전체")) { // 아무런 조건이 들어오지 않을 경우
	         
	      } else { // 조건이 한개라도 들어온다면
	         queryString += "where ";

	         if(!work_location.equals("전국")) {
	            queryString += "work_location = :work_location ";
	         }
	         if(!recruitment_school.equals("전체")) {
	            queryString += "recruitment_school = :recruitment_school ";
	         }
	         if(!recruitment_form.equals("전체")) {
	            queryString += "recruitment_form = :recruitment_form ";
	         }
	      }

	      Query query=session.createQuery(queryString);

	      if(!work_location.equals("전국")) {
	         query.setParameter("work_location", work_location);
	      }
	      if(!recruitment_school.equals("전체")) {
	         query.setParameter("recruitment_school", recruitment_school);
	      }
	      if(!recruitment_form.equals("전체")) {
	         query.setParameter("recruitment_form", recruitment_form);
	      }
	      
	      List<Recruitment> recruitmentList =query.list();
	      
	      return recruitmentList;
		/*
		 * Query query=session.
		 * createQuery("from Recruitment where work_location = :work_location " +
		 * "or recruitment_school= :recruitment_school" +
		 * "or recruitment_form= :recruitment_form");
		 * query.setParameter("work_location", work_location);
		 * query.setParameter("recruitment_school", recruitment_school);
		 * //query.setParameter("company_scale", company_scale);
		 * query.setParameter("recruitment_form", recruitment_form);
		 * 
		 * 
		 * List<Recruitment> recruitmentList =query.list();
		 * 
		 * return recruitmentList;
		 */
		
		
	}

}
