package kr.or.hanium.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.or.hanium.model.Company;

@Repository
@Transactional
public class CompanyInfoDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Company> getCompanyInfo(Company company) {

		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Company where company = :company ");
		query.setParameter("company", company);	
		
		List<Company> CompanyInfo =query.list();
		
		return CompanyInfo;
		
	}


	

}
