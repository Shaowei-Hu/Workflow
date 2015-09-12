package com.shaowei.workflow.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shaowei.workflow.model.KeyValue;
import com.shaowei.workflow.service.WorkflowService;

@Controller
@RequestMapping(value="/workflow")
public class WorkflowController {
	
	@Resource
	WorkflowService workflowService;
	
	@RequestMapping(value="/getDecisionByStepId/{stepId}", method = RequestMethod.GET)
	public @ResponseBody List<KeyValue> getDecisionByStepId(@PathVariable String stepId){		
		return workflowService.getDecisionByStepId(stepId);
	}

}
