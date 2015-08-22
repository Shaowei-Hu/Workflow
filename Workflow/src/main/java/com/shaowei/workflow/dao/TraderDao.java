package com.shaowei.workflow.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.Trader;

@Repository
public class TraderDao extends BaseDao<Trader> {

	public TraderDao() {
		super(Trader.class);
	}

	public Trader getTraderByName(String name) {
		Session session = super.getHibernateTemplate().getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(Trader.class);
		criteria.add(Restrictions.eq("traderName", name));

		@SuppressWarnings("unchecked")
		List<Trader> traders = criteria.list();
		session.getTransaction().commit();
		if (traders==null || traders.size()==0)
			return null;
		else
			return traders.get(0);
	}

}
