package com.shaowei.workflow.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shaowei.workflow.dao.WorkflowDao;
import com.shaowei.workflow.model.KeyValue;
import com.shaowei.workflow.model.Step;

@Service
public class WorkflowService {

	@Resource
	WorkflowDao workflowDao;
	
	public List<KeyValue> getDecisionByStepId(String stepId){
		return workflowDao.getDecisionByStepId(stepId);
	}
	
	public String getIntervenorJobById(int id){
		return workflowDao.getIntervenorJobById(id);
	}
	
	public Step getFullStepById(int id){
		return workflowDao.getFullStep(id);
	}
}
