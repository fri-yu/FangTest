package com.fang.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
public class Identity {
	private String id;
	private String oa_userid;
	private String name;
	private String email;
	private String loginTime;
	private String token;
	private String city;
	private String team_id;
	private String sales_id;
	private String team_ids;
	private int parent_corp_id;
	private String parent_corp_name;
	private int dept_id;
	private String real_name;
	private String phone;
	private String passport_id;
	private String passport_user_id;
	private String passport_user_name;
	private static boolean IsAuthenticated;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOa_userid() {
		return oa_userid;
	}

	public void setOa_userid(String oa_userid) {
		this.oa_userid = oa_userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getSales_id() {
		return sales_id;
	}

	public void setSales_id(String sales_id) {
		this.sales_id = sales_id;
	}

	public String getTeam_ids() {
		return team_ids;
	}

	public void setTeam_ids(String team_ids) {
		this.team_ids = team_ids;
	}

	public int getParent_corp_id() {
		return parent_corp_id;
	}

	public void setParent_corp_id(int parent_corp_id) {
		this.parent_corp_id = parent_corp_id;
	}

	public String getParent_corp_name() {
		return parent_corp_name;
	}

	public void setParent_corp_name(String parent_corp_name) {
		this.parent_corp_name = parent_corp_name;
	}

	public int getDept_id() {
		return dept_id;
	}

	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}

	public String getReal_name() {
		return real_name;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassport_id() {
		return passport_id;
	}

	public void setPassport_id(String passport_id) {
		this.passport_id = passport_id;
	}

	public String getPassport_user_id() {
		return passport_user_id;
	}

	public void setPassport_user_id(String passport_user_id) {
		this.passport_user_id = passport_user_id;
	}

	public String getPassport_user_name() {
		return passport_user_name;
	}

	public void setPassport_user_name(String passport_user_name) {
		this.passport_user_name = passport_user_name;
	}

	public static boolean isIsAuthenticated() {
		Identity user = Identity.getUser();
		try {
			return true;
//			return user != null && !(user.id == null || user.id.isEmpty());
		} catch (Exception ex) {
			return false;
		}
	}

	public static Identity getUser() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		//System.out.println("hash2:"+request.hashCode());
		if (request.getCookies() != null) {
			for (Cookie co : request.getCookies()) {
				//System.out.println(co.getName());
				if ("userName".equals(co.getName())) {
					System.out.println("userName:" + co.getValue());
				}
				//System.out.println(co.toString());
			}
		}
		Identity user = null;
		return user;
	}

}
