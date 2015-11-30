package com.shaowei.workflow.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.shaowei.workflow.model.KeyValue;
import com.shaowei.workflow.model.StepSimple;

@Repository
public class WorkflowDao{
//public class WorkflowDao extends BaseDao<Step>{
	
//	WorkflowDao(){
//		super(Step.class);
//	}

	@Resource
	WorkflowMapper workflowMapper;
	
	public List<KeyValue> getDecisionByStepId(String stepId){
		return workflowMapper.getDecisionByStepId(stepId);
	}
	
	public String getIntervenorJobById(int id){
		return workflowMapper.getIntervenorJobById(id);
	}
	
	public List<StepSimple> getWorkflow(){
		return workflowMapper.getWorkflow();
	}
	

}
