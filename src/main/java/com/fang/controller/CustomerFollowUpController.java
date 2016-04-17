package com.fang.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.fang.bean.AjaxJsonBean;
import com.fang.bean.CustomerFollowUpModel;
import com.fang.service.CustomerFollowUpService;

@Controller
@RequestMapping(value = { "/CustomerFollowUp" })
public class CustomerFollowUpController {
	@Resource
	private CustomerFollowUpService service;

	@RequestMapping("/FollowUpList.do")
	public ModelAndView FollowUpList(CustomerFollowUpModel model) {
		ModelAndView mav = new ModelAndView("/customer/FollowUpList");
		mav.addObject("model", model);
		System.out.println(service);
		for (String str : service.getData()) {
			System.out.println("data:" + str);
		}
		return mav;
	}

	@ResponseBody
	@RequestMapping("/Search.do")
	public String search() {
		model1 m1 = new model1();
		m1.No = "No2";
		m1.City = "city2";
		m1.RealName = "RealName2";
		m1.Phone = "Phone2";
		m1.ProjName = "ProjName2";
		m1.NewCode = "NewCode2";
		m1.HuxingInfo = "HuxingInfo2";
		AjaxJsonBean<model1> m = new AjaxJsonBean<model1>();
		m.Message = "Success";
		m.RowsCount = 1;
		m.Rows = new ArrayList<model1>();
		m.Rows.add(m1);
		System.out.println(JSON.toJSON(m));
		return JSON.toJSON(m).toString();
	}

	String string = "{\"RowsCount\":1,\"Message\":\"Success\",\"Rows\":[{\"ID\":3235180,\"No\":1,\"City\":\"德清\",\"MallID\":3590741,\"RealName\":\"55\",\"Phone\":\"187****2836\",\"Phone1\":\"85-FC-C1-E6-66-B8-87-26-FD-F0-21-E9-8B-95-03-8A\",\"ProjName\":\"莫干山观云庄园\",\"state\":\"到访\",\"UpdateTime\":\"2016-03-31 15:44:41\",\"hTime\":\"2016-03-31 15:44:38\",\"MediumFlag\":\"新房帮录入 - 其他\",\"FromText\":\"-\",\"SellerName\":\"张亚林\",\"IsfollowUp\":\"是\",\"Refund_audit_status\":\"-\",\"Tuirengou_audit_status\":\"-\",\"Daofang_audit_status\":\"待审\",\"Renchou_audit_status\":\"-\",\"Rengou_audit_status\":\"-\",\"Qianyue_audit_status\":\"-\",\"NewCode\":2023121656,\"SellerID\":42485984,\"HouseInfo\":\"\",\"LiveName\":\"\",\"TuiGuangName\":\"\",\"userState\":\"待付款\",\"rengouState\":\"--\",\"HuxingInfo\":null,\"CanGiveUp\":\"yes\",\"isHaveLoan\":\"否\",\"IsShowGenjin\":\"true\"}]}";

	// public static void main(String[] args) {
	// model1 m1 = new model1();
	// m1.No = "No2";
	// m1.City = "city2";
	// m1.RealName = "RealName2";
	// m1.Phone = "Phone2";
	// m1.ProjName = "ProjName2";
	// m1.NewCode = "NewCode2";
	// m1.HuxingInfo = "HuxingInfo2";
	// model m = new model();
	// m.Message = "Success";
	// m.rowsCount = "1";
	// m.Rows = new ArrayList<model1>();
	// m.Rows.add(m1);
	// System.out.println(JSON.toJSON(m));
	// }

	/*
	 * public static void main(String[] args) { try {
	 * Class.forName("net.sourceforge.jtds.jdbc.Driver"); String url =
	 * "jdbc:jtds:sqlserver://124.251.46.179:1433;DatabaseName=channelsales_test"
	 * ; String username = "channelsales_test_admin"; String password =
	 * "ac1297F3"; Connection conn = DriverManager.getConnection(url, username,
	 * password); Statement st = conn.createStatement(); ResultSet set = st
	 * .executeQuery(" select top 10 createtime from userandprojmaintable ");
	 * while (set.next()) { System.out.println(set.getString("createtime"));
	 * 
	 * } set.close(); st.close(); conn.close(); } catch (SQLException e) { throw
	 * new IllegalArgumentException(e); } catch (ClassNotFoundException e) { //
	 * TODO Auto-generated catch block e.printStackTrace(); } }
	 */
}

// class model {
// public String rowsCount;
// public String Message;
// public List<model1> Rows;
//
// }

class model1 {
	public String No;
	public String City;
	public String RealName;
	public String Phone;
	public String ProjName;
	public String NewCode;
	public String HuxingInfo;

}