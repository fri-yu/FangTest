package com.fang.bean;

import java.util.List;

public class AjaxJsonBean<T> {
	public int rowsCount;
	public String Message;
	public List<T> Rows;
}
