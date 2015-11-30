package com.shaowei.workflow.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.StepDao;
import com.shaowei.workflow.dao.WorkflowDao;
import com.shaowei.workflow.model.KeyValue;
import com.shaowei.workflow.model.Step;
import com.shaowei.workflow.model.StepSimple;

@Service
public class WorkflowService {

	@Resource
	WorkflowDao workflowDao;
	@Resource
	private StepDao stepDao;
	
	public List<KeyValue> getDecisionByStepId(String stepId){
		return workflowDao.getDecisionByStepId(stepId);
	}
	
	public String getIntervenorJobById(int id){
		return workflowDao.getIntervenorJobById(id);
	}
	
	public Step getFullStepById(int id){
		return stepDao.getFullStep(id);
	}
	
	public String getStepNameByStepId(String stepId){
		List<Step> steps = stepDao.getStepByStepId(stepId);
		return stepId + "-" + steps.get(0).getStepName();
	}
	
	public List<Step> getStepsByStepId(String stepId){
		return stepDao.getStepByStepId(stepId);
	}
	
	public List<StepSimple> getWorkflow(){
		return workflowDao.getWorkflow();
	}
}
