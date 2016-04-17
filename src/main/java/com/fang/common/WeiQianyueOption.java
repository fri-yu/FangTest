package com.fang.common;

public enum WeiQianyueOption {

	_enumdefault("_enumdefault", "_enumdefault"), _60days("_60days", "60"), _90days(
			"_90days", "90"), _120days("_120days", "120");

	private String value;

	private String key;

	public String getValue() {
		return value;
	}

	private WeiQianyueOption(String key, String value) {
		this.key = key;
		this.value = value;
	}
}
