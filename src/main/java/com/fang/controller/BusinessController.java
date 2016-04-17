package com.fang.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/sys")
public class BusinessController {
	@RequestMapping(value = "/business.do")
	public String business() {
		return "sys/business";
	}

	@RequestMapping(value = "/getMenu.do")
	public void getMenu(HttpServletResponse response) {
//		response.setContentType("text/xml; charset=utf-8");
		response.setContentType("application/xml");  
		Document document = null;
		try {
			document = DocumentHelper.parseText(treeString);
			// PrintWriter pw = new PrintWriter("c:\\wc.xml");
			// XMLWriter xw = new XMLWriter(pw);
			// xw.write(document);
			// xw.flush();
			// xw.close();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// catch (FileNotFoundException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.write(treeString);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		return document;
	}

	@RequestMapping(value = "/checkIsBindingPassport.do")
	@ResponseBody
	public String checkIsBindingPassport() {
		return "yes";
	}

	String treeString = "<tree id='0'><item text='首页' id='LEVEL0_08' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'>../UserIndex/DefaultIndex.do</userdata></item><item text='楼盘管理' id='LEVEL0_04' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='楼盘列表' id='LEVEL1_0401' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../project/list.do</userdata></item><item text='楼盘动态' id='LEVEL1_0402' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../LouPanDongTai/Index.do</userdata></item><item text='楼盘销售情况' id='LEVEL1_0404' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../BuildingSale/Main.do</userdata></item></item><item text='客户管理' id='LEVEL0_02' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='渠道订单' id='LEVEL1_0201' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../CustomerFollowUp/FollowUpList.do?audit_ETime=2016-05-01%2023:51:03#</userdata></item><item text='发送短信' id='LEVEL1_0210' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../CustomerFollowUp/MsgRecord.do</userdata></item><item text='金融订单' id='LEVEL1_0214' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../FinancialOrderList/Index.do</userdata></item><item text='装修订单' id='LEVEL1_0216' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../DecorationOrderList/Index.do</userdata></item><item text='客户信息管理' id='LEVEL1_0209' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../CustomerInfoManagement/GetCustomerInfoList.do</userdata></item><item text='客户跟进审核' id='LEVEL1_0204' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../verify/index.do</userdata></item><item text='录入客户' id='LEVEL1_0205' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../UserAndProjMainTable/Index.do</userdata></item><item text='公共客户池' id='LEVEL1_0208' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../Customer/Pool.do</userdata></item></item><item text='活动管理' id='LEVEL0_28' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='红包客户' id='LEVEL1_0202' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../subsidyaudit/list.do</userdata></item><item text='现金红包记录' id='LEVEL1_020208' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../RedBagApplyRecord/Index.do</userdata></item><item text='红包分享' id='LEVEL1_25' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../RedBagShare/ProjectListPage.do</userdata></item></item><item text='统计分析' id='LEVEL0_01' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='排行榜' id='LEVEL1_0102' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../CustomerStatistics/Index.do</userdata></item><item text='im聊天统计' id='LEVEL1_0131' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../EC_Statistics_IM/Index.do</userdata></item><item text='外呼统计' id='LEVEL1_0133' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../OutCallStatistics/Index.do</userdata></item><item text='客户信息完善度统计' id='LEVEL1_0127' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../CustomerInfoStatistics/Index.do</userdata></item><item text='激活账户统计' id='LEVEL1_0120' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../CustomerReport/Index.do</userdata><item text='城市会员账号统计' id='LEVEL2_012001' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='2'><userdata name='url'>../CustomerReport/CityAccountIndex.do</userdata></item><item text='账户激活统计' id='LEVEL2_012002' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='2'><userdata name='url'>../CustomerReport/AccountActive_CityIndex.do</userdata></item><item text='账户指标统计' id='LEVEL2_012003' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='2'><userdata name='url'>../CustomerReport/AccountIndicator_CityIndex.do</userdata></item></item><item text='邀请统计' id='LEVEL1_0134' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../InvitationUserAndAgent/Index.do</userdata></item><item text='报备确客统计' id='LEVEL1_0136' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../ConfirmGuests/Index.do</userdata></item></item><item text='人员管理' id='LEVEL0_03' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='搜房顾问' id='LEVEL1_0301' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../MarketManage/SaleManageList.do</userdata></item></item><item text='销售管理' id='LEVEL0_13' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='绩效工资' id='LEVEL1_1304' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../PerformancePay/Index.do</userdata></item><item text='外呼管理' id='LEVEL1_1302' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>OB_TaskInfo/Index.do</userdata></item><item text='升降级考核' id='LEVEL1_1303' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../PerformanceAssessment/Index.do</userdata></item><item text='销售部kpi考核' id='LEVEL1_1301' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../SaleManager/Index.do</userdata></item></item><item text='工具' id='LEVEL0_27' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='我的钱' id='LEVEL1_09' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../MyMoney/Index.do</userdata></item><item text='站内信' id='LEVEL1_20' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'></userdata><item text='我的站内信' id='LEVEL2_2001' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='2'><userdata name='url'>../EC_Platform_MailBox/GetReceivedMailView.do</userdata></item></item><item text='房学院' id='LEVEL1_19' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../Doc/Index.do</userdata><item text='房学院管理' id='LEVEL2_1901' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='2'><userdata name='url'>../Doc/list.do</userdata></item></item></item><item text='投诉管理' id='LEVEL0_30' im0='../Resource/Image/folder32.png' im1='../Resource/Image/folder32.png' im2='../Resource/Image/folder32.png' check='0'  child='1'><userdata name='url'></userdata><item text='投诉处理' id='LEVEL1_3002' im0='../Resource/Image/appbar.navigate.next.png' im1='../Resource/Image/appbar.navigate.next.png' im2='../Resource/Image/appbar.navigate.next.png' check='0'  child='1'><userdata name='url'>../ComplaintDeal/Index.do</userdata></item></item></tree>";
}
