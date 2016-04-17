package com.fang.bean;

import java.util.List;

public class AjaxJsonBean<T> {
	public int RowsCount;
	public String Message;
	public List<T> Rows;
}
