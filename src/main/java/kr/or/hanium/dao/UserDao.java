package kr.or.hanium.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.hanium.model.User;

@Repository 
@Transactional 
public class UserDao {

	 //@Autowired
	 //private PasswordEncoder passwordEncoder; 

	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(User user) {

		Session session = sessionFactory.getCurrentSession();
		 //user.setPassword(passwordEncoder.encode(user.getPassword())); 

		session.saveOrUpdate(user);

		session.flush();
	}

	public User getUserById(int userId) {

		Session session = sessionFactory.getCurrentSession();

		return (User) session.get(User.class, userId); // userId에 해당하는 객체를 return
	}

	@SuppressWarnings("unchecked")
	public User getUserByUsername(String uemail) {

		Session session = sessionFactory.getCurrentSession();

		TypedQuery<User> query = session.createQuery("from User where uemail = ?");
		query.setParameter(0, uemail);
		
		return query.getSingleResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<User> getAllUSers() {
		
		Session session = sessionFactory.getCurrentSession();
		
		TypedQuery<User> query = session.createQuery("from User");
		List<User> userList = query.getResultList();
		
		return userList;
	}

}
