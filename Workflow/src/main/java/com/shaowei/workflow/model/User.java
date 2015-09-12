package com.shaowei.workflow.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;


@Entity(name="WKF_USER")
public class User implements Serializable{
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4854419513318409818L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="USER_ID")
	private int userId;
	@Column(name="NAME",length=64)
	private String userName;
	@Column(name="PASSWORD",length=32)
	private String userPassword;
	
	@Column(name="SITE",length=16)
	private String site;
	@Column(name="REGION",length=16)
	private String region;
	@Column(name="AGENCE",length=16)
	private String agency;
	
	@Column(name="JOB",length=32)
	private String job;
	@ManyToOne
	@JoinColumn(name="MANAGER_ID")
	private User manager;
	@OneToMany(mappedBy="manager")
	private Set<User> subordinates;
	@ManyToOne
	@JoinColumn(name="PARTNER_ID")
	private User partner;
	@OneToMany(mappedBy="partner")
	private Set<User> myPartners;
	
	@Transient
	private int managerId;
	@Transient
	private int partnerId;
	@Transient
	private String capacity;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public User getManager() {
		return manager;
	}
	public void setManager(User manager) {
		this.manager = manager;
	}
	public User getPartner() {
		return partner;
	}
	public void setPartner(User partner) {
		this.partner = partner;
	}
	public Set<User> getSubordinates() {
		return subordinates;
	}
	public void setSubordinates(Set<User> subordinates) {
		this.subordinates = subordinates;
	}
	public Set<User> getMyPartners() {
		return myPartners;
	}
	public void setMyPartners(Set<User> myPartners) {
		this.myPartners = myPartners;
	}
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public int getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(int partnerId) {
		this.partnerId = partnerId;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	

	
	
	

}
