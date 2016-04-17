package com.fang.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CustomerFollowUpModel {
	private String newCode = "newCode";
	private String city = "city";
	private String userType = "userType";
	private String livename;
	private String customerPhone;
	private String customerRealName;
	private int behaviorid = -1;
	private int state = -1;
	private int verifyType = -1;
	private int verifyStatus = -1;
	private long sellerID = -1;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date bTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date eTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date audit_BTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date audit_ETime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date cStateSTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date cStateETime;

	public String getNewCode() {
		return newCode;
	}

	public void setNewCode(String newCode) {
		this.newCode = newCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getLivename() {
		return livename;
	}

	public void setLivename(String livename) {
		this.livename = livename;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerRealName() {
		return customerRealName;
	}

	public void setCustomerRealName(String customerRealName) {
		this.customerRealName = customerRealName;
	}

	public int getBehaviorid() {
		return behaviorid;
	}

	public void setBehaviorid(int behaviorid) {
		this.behaviorid = behaviorid;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getVerifyType() {
		return verifyType;
	}

	public void setVerifyType(int verifyType) {
		this.verifyType = verifyType;
	}

	public int getVerifyStatus() {
		return verifyStatus;
	}

	public void setVerifyStatus(int verifyStatus) {
		this.verifyStatus = verifyStatus;
	}

	public long getSellerID() {
		return sellerID;
	}

	public void setSellerID(long sellerID) {
		this.sellerID = sellerID;
	}

	public Date getbTime() {
		return bTime;
	}

	public void setbTime(Date bTime) {
		this.bTime = bTime;
	}

	public Date geteTime() {
		return eTime;
	}

	public void seteTime(Date eTime) {
		this.eTime = eTime;
	}

	public Date getAudit_BTime() {
		return audit_BTime;
	}

	public void setAudit_BTime(Date audit_BTime) {
		this.audit_BTime = audit_BTime;
	}

	public Date getAudit_ETime() {
		return audit_ETime;
	}

	public void setAudit_ETime(Date audit_ETime) {
		this.audit_ETime = audit_ETime;
	}

	public Date getcStateSTime() {
		return cStateSTime;
	}

	public void setcStateSTime(Date cStateSTime) {
		this.cStateSTime = cStateSTime;
	}

	public Date getcStateETime() {
		return cStateETime;
	}

	public void setcStateETime(Date cStateETime) {
		this.cStateETime = cStateETime;
	}

}
