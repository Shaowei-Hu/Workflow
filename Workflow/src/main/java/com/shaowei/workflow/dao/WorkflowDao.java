package com.shaowei.workflow.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.KeyValue;
import com.shaowei.workflow.model.Step;

@Repository
public class WorkflowDao extends BaseDao<Step>{
	
	WorkflowDao(){
		super(Step.class);
	}

	@Resource
	WorkflowMapper workflowMapper;
	
	public List<KeyValue> getDecisionByStepId(String stepId){
		return workflowMapper.getDecisionByStepId(stepId);
	}
	
	public String getIntervenorJobById(int id){
		return workflowMapper.getIntervenorJobById(id);
	}
	
	public Step getFullStep(int id){
		Session session = super.getHibernateTemplate().getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(Step.class);
		criteria.add(Restrictions.eq("id", id));

		@SuppressWarnings("unchecked")
		List<Step> steps = criteria.list();
		Step step = null;
		if(steps!=null && steps.size()>0){
			step = steps.get(0);
			step.getNextStep().getStepName();
		}
		session.getTransaction().commit();
		return step;
	}
}
