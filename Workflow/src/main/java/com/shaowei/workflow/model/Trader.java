package com.shaowei.workflow.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name="WORKFLOW_TRADERS")
public class Trader implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7976084457032271442L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int traderId;
	@Column(name="TRADER_NAME",length=64)
	private String traderName;
	@Column(name="TRADER_PASSWORD",length=32)
	private String password;
	@Column(name="TRADER_EMAIL",length=64)
	private String email;
	
	
	public int getTraderId() {
		return traderId;
	}
	public void setTraderId(int traderId) {
		this.traderId = traderId;
	}
	public String getTraderName() {
		return traderName;
	}
	public void setTraderName(String traderName) {
		this.traderName = traderName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

		

}
