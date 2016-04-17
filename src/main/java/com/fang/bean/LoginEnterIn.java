package com.fang.bean;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import com.fang.common.SlAntiXss;
import com.fang.common.SlDatabase;

import sun.misc.BASE64Decoder;

public class LoginEnterIn {

	private String email;
	private String password;
	private String Phone;

	public String getEmail() {
		String temp = (email == null || email.isEmpty()) ? "" : email;
		System.out.println("get email temp:" + temp);
		try {
			temp = URLDecoder.decode(temp.split("@")[1], "utf-8");
			System.out.println("get email temp2:" + temp);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
			temp = "";
		}
		temp = SlAntiXss.getSafeText(temp);
		temp = SlDatabase.GetSafetySql(temp);

		return DecodeBase64("utf-8", temp);
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public static void main(String[] args) {
		System.out.println(DecodeBase64("utf-8", "5pivZmFuZy5jb20="));
	}

	public String getPassword() {
		String temp = (password == null || password.isEmpty()) ? "" : password;
		try {
			temp = URLDecoder.decode(temp.split("@")[1], "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
			temp = "";
		}
		temp = SlAntiXss.getSafeText(temp);
		temp = SlDatabase.GetSafetySql(temp);

		return DecodeBase64("utf-8", temp);
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		this.Phone = phone;
	}

	/**
	 * base64解密
	 * 
	 * @param code_type
	 * @param code
	 * @return
	 */
	public static String DecodeBase64(String code_type, String code) {
		byte[] b = null;
		String result = null;
		if (code != null) {
			BASE64Decoder decoder = new BASE64Decoder();
			try {
				b = decoder.decodeBuffer(code);
				result = new String(b, code_type);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public String toString() {
		return "password:" + password + "___email:" + email;
	}
}
