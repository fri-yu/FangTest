package com.fang.common;

public class Config {
	/**
	 * 脚本路径
	 */
	public static final String ScriptPath = Common.getValue("ScriptPath");

	/**
	 * 项目版本
	 */
	public static final String Version = Common.getValue("Version");
	/**
	 * 标题前缀
	 */
	public static final String TitlePrefix = Common.getValue("TitlePrefix");
	/**
	 * 邮箱后缀
	 */
	public static final String EmailSuffix = Common.getValue("EmailSuffix");

	/**
	 * 登录
	 */
	public static final String LoginUrl = Common.getValue("LoginUrl");

	
	public static void main(String[] args) {
		System.out.println(Config.ScriptPath);
	}
}
