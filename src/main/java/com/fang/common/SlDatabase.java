package com.fang.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class SlDatabase {
	private static final String sqlSeparatKeywords = "'|;|--|\'|\"|/*|%|#";
	private static final List<String> sqlKeywordsArray = new ArrayList<String>();

	/**
	 * 静态代码块
	 */
	static {
		String arr1[] = { "'", ";", "--", "\"", "/*", "%", "#" };
		String arr2[] = { " '", " ;", " --", " \"", " /*", " %", " #" };
		String arr3[] = { "' ", "; ", "-- ", "\" ", "/* ", "% ", "# " };
		/* .net code
		 sqlKeywordsArray.AddRange(sqlSeparatKeywords.Split('|'));
         sqlKeywordsArray.AddRange(Array.ConvertAll<string, string>(sqlCommandKeywords.Split('|'), h => h = h + " "));
         sqlKeywordsArray.AddRange(Array.ConvertAll<string, string>(sqlCommandKeywords.Split('|'), h => h = " " + h));*/
		sqlKeywordsArray.addAll(Arrays.asList(arr1));
		sqlKeywordsArray.addAll(Arrays.asList(arr2));
		sqlKeywordsArray.addAll(Arrays.asList(arr3));

	}

	/**
	 * 返回安全字符串
	 * 
	 * @param input
	 * @return
	 */
	public static String GetSafetySql(String input) {
		if (input == null || input.isEmpty()) {
			return "";
		}
		if (IsSafetySql(input)) {
			return input;
		}
		return "";
	}

	/**
	 * 是否安全
	 * 
	 * @param input
	 * @return
	 */
	public static boolean IsSafetySql(String input) {
		if (input == null || input.isEmpty()) {
			return true;
		}
		try {
			input = URLDecoder.decode(input, "uft-8").toLowerCase();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		for (String sqlKeyword : sqlKeywordsArray) {
			if (input.indexOf(sqlKeyword) >= 0) {
				return false;
			}
		}
		return true;
	}
}
