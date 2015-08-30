package com.shaowei.workflow.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.Admin;


@Repository
public class AdminDao extends BaseDao<Admin> {

	public AdminDao() {
		super(Admin.class);
	}

	public Admin getAdminByName(String name) {
		Session session = super.getHibernateTemplate().getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(Admin.class);
		criteria.add(Restrictions.eq("adminName", name));

		@SuppressWarnings("unchecked")
		List<Admin> admins = criteria.list();
		session.getTransaction().commit();
		if (admins==null || admins.size()==0)
			return null;
		else
			return admins.get(0);
	}

}
