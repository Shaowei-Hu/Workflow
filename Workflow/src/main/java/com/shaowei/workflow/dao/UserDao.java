package com.shaowei.workflow.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.User;

@Repository
public class UserDao extends BaseDao<User>{
	
	public UserDao(){
		super(User.class);
	}
	
	public User getUserByName(String name) {
		Session session = super.getHibernateTemplate().getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("userName", name));

		@SuppressWarnings("unchecked")
		List<User> users = criteria.list();
		session.getTransaction().commit();
		if (users==null || users.size()==0)
			return null;
		else
			return users.get(0);
	}

}
