package com.shaowei.workflow.model;

public class Step {
	
	private String stepId;
	private String stepName;
	private String phase;
	private String decision;
	private String condition;
	private String nextStepId;
	
	
	public String getStepId() {
		return stepId;
	}
	public void setStepId(String stepId) {
		this.stepId = stepId;
	}
	public String getStepName() {
		return stepName;
	}
	public void setStepName(String stepName) {
		this.stepName = stepName;
	}
	public String getPhase() {
		return phase;
	}
	public void setPhase(String phase) {
		this.phase = phase;
	}
	public String getDecision() {
		return decision;
	}
	public void setDecision(String decision) {
		this.decision = decision;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getNextStepId() {
		return nextStepId;
	}
	public void setNextStepId(String nextStepId) {
		this.nextStepId = nextStepId;
	}
	
	

}
