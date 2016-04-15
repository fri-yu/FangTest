package com.fang.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;

public class Common {
	private static Properties pps;
	static {
		try {
			GetConfig();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void GetConfig() throws FileNotFoundException, IOException {
		pps = new Properties();
		InputStream in = Common.class.getClassLoader().getResourceAsStream(
				"common.properties");
		// pps.load(new FileInputStream("/jdbc.properties"));
		try {
			pps.load(in);
		} catch (FileNotFoundException e) {
			// TODO: handle exception

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static String getValue(String key)  {
		if (pps == null) {
			try {
				GetConfig();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		Enumeration en = pps.propertyNames();

		while (en.hasMoreElements()) {
			String strKey = (String) en.nextElement();
			if (key.equals(strKey)) {
				String strValue = pps.getProperty(strKey);
				//System.out.println(strKey + "=" + strValue);
				return strValue;
			}
		}
		return "";
	}

	public static void main(String[] args) throws FileNotFoundException,
			IOException {
		System.out.println(Common.getValue("aa"));
	}

}
