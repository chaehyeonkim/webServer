package kr.or.hanium.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.hanium.dao.CompanyInfoDao;
import kr.or.hanium.model.Company;

@Service
public class CompanyService {

	@Autowired
	private CompanyInfoDao companyInfoDao;

	public List<Company> getCompanyInfo(String company) {

		return companyInfoDao.getCompanyInfo(company);
    }

}
