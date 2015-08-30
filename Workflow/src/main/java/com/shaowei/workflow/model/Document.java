package com.shaowei.workflow.model;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

public class Document {
	
	private int authorId;
	private int responsibleId;
	private Set<Integer> lectorIds;
	private String currentStep;
	
	
	private int documentId;
	private String client;
	private BigDecimal amount;
	private BigDecimal resource;
	
	private List<Comment> comments;
	
	private List<History> history;

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public int getResponsibleId() {
		return responsibleId;
	}

	public void setResponsibleId(int responsibleId) {
		this.responsibleId = responsibleId;
	}

	public Set<Integer> getLectorIds() {
		return lectorIds;
	}

	public void setLectorIds(Set<Integer> lectorIds) {
		this.lectorIds = lectorIds;
	}

	public int getDocumentId() {
		return documentId;
	}

	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public BigDecimal getResource() {
		return resource;
	}

	public void setResource(BigDecimal resource) {
		this.resource = resource;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public List<History> getHistory() {
		return history;
	}

	public void setHistory(List<History> history) {
		this.history = history;
	}

	public String getStep() {
		return currentStep;
	}

	public void setStep(String step) {
		this.currentStep = step;
	}
	
	
	
	

}
