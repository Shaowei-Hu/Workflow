package com.shaowei.workflow.model;

import java.util.Date;

public class History {
	
	private int historyId;
	
	private Date date;
	private String step;
	private String phase;
	private int responsibleId;
	private String responsibleName;
	private String decision;
	private String nextStep;
	
	
	public int getHistoryId() {
		return historyId;
	}
	public void setHistoryId(int historyId) {
		this.historyId = historyId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStep() {
		return step;
	}
	public void setStep(String step) {
		this.step = step;
	}
	public String getPhase() {
		return phase;
	}
	public void setPhase(String phase) {
		this.phase = phase;
	}
	public int getResponsibleId() {
		return responsibleId;
	}
	public void setResponsibleId(int responsibleId) {
		this.responsibleId = responsibleId;
	}
	public String getResponsibleName() {
		return responsibleName;
	}
	public void setResponsibleName(String responsibleName) {
		this.responsibleName = responsibleName;
	}
	public String getDecision() {
		return decision;
	}
	public void setDecision(String decision) {
		this.decision = decision;
	}
	public String getNextStep() {
		return nextStep;
	}
	public void setNextStep(String nextStep) {
		this.nextStep = nextStep;
	}
	
	
	

}
