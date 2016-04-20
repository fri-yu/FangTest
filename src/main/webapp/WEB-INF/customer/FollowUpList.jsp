<%@ page language="java" import="java.util.*,com.fang.common.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String scriptPath = basePath + Config.ScriptPath;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title><%=Config.TitlePrefix%>-客户管理-客户列表</title>

<style>
.sldatatablefix td {
	text-align: center;
}
</style>
<link href="<%=scriptPath%>bootstrap/bootstrap.min.css?Version=<%=Config.Version%>" rel="stylesheet" type="text/css" />
<link href="<%=scriptPath%>bootstrap/bootstrap-table.min.css?Version=<%=Config.Version%>" rel="stylesheet"
	type="text/css" />

<jsp:include page="../sys/includePart.jsp" flush="true" />
<script type="text/javascript" src="<%=scriptPath%>bootstrap/bootstrap.min.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=scriptPath%>bootstrap/bootstrap-table.js?Version=<%=Config.Version%>"></script>
<style>
.loadImg,.showImg {
	width: auto;
	position: fixed;
	top: 50%;
	left: 50%;
	margin-left: -20rem;
	margin-top: -22rem;
	z-index: 10003;
	display: none;
	text-align: center;
	font-family: "\5FAE\8F6F\96C5\9ED1", 微软雅黑, "Microsoft Yahei", 雅黑\9,
		Arial;
	font-size: 13px;
	font-weight: bold;
}

.loadingmask,.mask {
	height: 100%;
	width: 100%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 10002;
	background-color: rgba(0, 0, 0, 0.5);
	display: none;
}

.dingdan_qudao {
	width: 100%;
	min-width: 800px;
	padding-top: 10px;
}

em {
	font-style: normal;
}

.dingdan_qudao dl {
	width: 100%;
	margin-bottom: 2px;
}

.dingdan_qudao dl dt {
	width: 100%;
	background-color: #efefef;
	color: #333333;
	font-size: 12px;
	height: 28px;
	line-height: 24px;
	padding: 0 16px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	position: relative;
}

.dingdan_qudao dl dt span {
	display: block;
	width: 100%;
	padding-right: 20px;
	height: 28px;
	background: url("<%=scriptPath%>Image/DingdanGuanli/upanddown.png")
		no-repeat 99% -20px;
	cursor: pointer;
	position: absolute;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	top: 0;
	left: 0;
}

.dingdan_qudao dl dt span.uppng {
	background-position: 99% -100px;
}

.dingdan_qudao dl dd {
	width: 100%;
	overflow: hidden;
	background-color: #f9f9f9;
	padding: 0 20px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.dingdan_qudao dl dd.kehuchaxun {
	width: 100%;
}

.kehuchaxun ul {
	min-width: 240px;
	float: left; //
	padding-bottom: 10px;
}

.kehuchaxun ul li {
	height: 25px;
	line-height: 25px;
	margin-top: 10px;
	color: #666666;
	font-size: 12px;
}

.kehuchaxun ul li input {
	border: 1px solid #cdcdcd;
	height: 23px;
	margin-left: 10px;
	width: 100px;
	padding-left: 10px;
	color: #666666;
	font-size: 12px;
}

.kehuchaxun ul li select {
	border: 1px solid #cdcdcd;
	height: 23px;
	margin-left: 10px;
	width: 100px;
	padding-left: 10px;
	color: #666666;
	font-size: 12px;
	cursor: pointer;
}

.dingdan_qudao dl dd.genjintiaojian {
	width: 100%;
}

.genjintiaojian ul {
	min-width: 280px;
	float: left;
	padding-bottom: 10px;
}

.genjintiaojian ul li {
	line-height: 25px;
	margin-top: 10px;
	color: #666666;
	font-size: 12px;
}

.genjintiaojian ul li em {
	float: left;
	color: #666666;
	font-size: 12px;
}

.genjintiaojian ul li .fuceng {
	float: left;
	position: relative;
	width: 18px;
}

.genjintiaojian ul li .fuceng i {
	display: block;
	width: 18px;
	margin-left: 5px;
	cursor: pointer;
}

.genjintiaojian ul li .fuceng i img {
	vertical-align: middle;
}

.genjintiaojian ul li .fuceng p {
	position: fixed;
	top: -20px;
	left: 0;
	width: 200px;
	background-color: #fff;
	padding: 0 5px;
	line-height: 20px;
	font-size: 12px;
	color: #666666;
	border-radius: 2px;
	-webkit-box-shadow: 0 0 3px 1px #dcdfe3;
	-moz-box-shadow: 0 0 3px 1px #dcdfe3;
	-ms-box-shadow: 0 0 3px 1px #dcdfe3;
	box-shadow: 0 0 3px 1px #dcdfe3;
	display: none;
	z-index: 10000000;
}

.genjintiaojian ul li input {
	float: left;
	border: 1px solid #cdcdcd;
	height: 23px;
	margin-left: 10px;
	width: 100px;
	padding-left: 10px;
	color: #666666;
	font-size: 12px;
	margin-left: 37px;
}

.genjintiaojian ul li select {
	float: left;
	border: 1px solid #cdcdcd;
	height: 23px;
	margin-left: 10px;
	width: 100px;
	padding-left: 10px;
	color: #666666;
	font-size: 12px;
	cursor: pointer;
}

.genjintiaojian ul li .time_tody {
	float: left;
}

.genjintiaojian ul li .time_tody>input {
	float: none;
	margin-left: 10px;
	margin-right: 10px;
	width: 88px;
}

.mr60 {
	margin-right: 60px;
}

.but_daochu {
	width: 100%;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	overflow: hidden;
	background-color: #fff;
	padding: 10px 0;
}

.but_daochu_cont {
	float: right;
}

.but_daochu_cont input {
	width: 80px;
	height: 25px;
	background: #c00;
	text-align: center;
	line-height: none;
	color: #fff;
	border: none;
	font-size: 14px;
	border-radius: 4px;
	cursor: pointer;
	margin-right: 20px;
}

.but_daochu_cont input:hover {
	background-color: #E39B00;
	color: #fff;
}

.dis {
	display: none;
}

.mr20 {
	margin-right: 20px;
}

.ml10 {
	margin-left: 10px;
}
</style>
</head>

<body>
	This is my JSP page.
	<br> ${model. getNewCode() }
	<br> ${model. getCity() }
	<br> ${model. getUserType() }
	<br> ${model. getBehaviorid() }
	<br> ${model. getVerifyType() }
	<br>${model. getAudit_ETime()==null }
	<br>${model. getAudit_BTime() }
	<div style="clear:both"></div>
	<div class="slconfigPart">
		<div class="slexpandShrink"></div>
	</div>
	<div class="dingdan_qudao sloperatePart">
		<dl>
			<dt>
				客户查询条件<span></span>
			</dt>
			<dd class="kehuchaxun clearfix">
				<ul>
					<li>客户姓名 <input type="text" id="realname" name="realname" value="">
					</li>
					<li>意向楼盘 <%
						/*@(Html.Action("RenderProjectAutoCompleteInput", "Common", new { hasLabel = false, defaultProjectID =
						 ViewBag.projID }))*/
					%>
					</li>
				</ul>
				<ul>
					<li>客户手机号<input id="phone" name="phone" type="text" value="">
					</li>
					<li>城&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;市 <%
						/*@(Html.Action("RenderCitySelect",
						 "Common", new { defaultCityCN = ViewBag.city }))*/
					%>
					</li>
				</ul>
				<ul>
					<li>客户来源 <select name="mediumflag" id="mediumflag">
							<option value="" selected="selected">请选择</option>
							<option value="0">PC</option>
							<option value="1">Wap</option>
							<option value="2">APP</option>
							<option value="3">搜房电话</option>
							<option value="4">电商案场</option>
							<option value="5">扫码</option>
							<option value="6">后台录入</option>
							<option value="7">新房帮录入</option>

							<option value="8">新房委托</option>
					</select> <select name="customerSource" id="customerSource" style="display: none">
							<option value="">全部</option>
					</select></li>
					<li>订单来源 <select name="fromtext" id="fromtext">
							<option value="">请选择</option>
							<option value="360导航">360导航</option>
							<option value="360房产频道">360房产频道</option>
							<option value="360品专">360品专</option>
							<option value="360自然搜索">360自然搜索</option>
							<option value="bing自然搜索">bing自然搜索</option>
							<option value="hao123导航">hao123导航</option>
							<option value="QQ名站">QQ名站</option>
							<option value="sogou阿拉丁">sogou阿拉丁</option>
							<option value="sogou导航">sogou导航</option>
							<option value="sogou自然搜索">sogou自然搜索</option>
							<option value="百度SEM">百度SEM</option>
							<option value="百度阿拉丁">百度阿拉丁</option>
							<option value="百度地图">百度地图</option>
							<option value="百度品专">百度品专</option>
							<option value="百度自然搜索">百度自然搜索</option>
							<option value="毒霸导航">毒霸导航</option>
					</select></li>
				</ul>
			</dd>
		</dl>
		<dl>
			<dt>
				跟进查询条件<span></span>
			</dt>
			<dd class="genjintiaojian clearfix">
				<ul class="mr20" style="min-width: 220px;">
					<li class="clearfix"><em>搜房顾问姓名</em> <%
 	/*@Html.Action("RenderUserTypeSelectWidthCSS", "Common", new { userType =
 	 "002", teamIdStr = Identity.User.DeptWherePart, inputWidth = 100 })*/
 %>
					</li>
					<li class="clearfix"><em>客户状态(当前)</em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli/help.png" height="16" width="16" /> </i>
							<p>订单当前被跟进的状态；未到访含义为只有绑定关系，但未生成订单的状态</p>
						</div> <select name="state" id="state">
							<option value="" selected="selected">请选择</option>
							<option value="0">订单</option>
							<option value="1">未到访</option>
							<option value="2">到访</option>
							<option value="3">认筹</option>
							<option value="4">认购</option>
							<option value="6">退款</option>
							<option value="8">退房</option>
							<option value="5">签约</option>
					</select></li>
					<li class="clearfix"><em>客户状态(历史)</em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli/help.png" height="16" width="16" /> </i>
							<p>订单跟进历史中经历过的状态</p>
						</div> <select name="behaviorid" id="behaviorid">
							<option value="-1" selected="selected">请选择</option>
							<option value="1">订单</option>
							<option value="10">未到访</option>
							<option value="11">到访</option>
							<option value="3">认筹</option>
							<option value="12">认购</option>
							<option value="15">退款</option>
							<option value="18">退房</option>
							<option value="13">签约</option>
					</select></li>
				</ul>
				<ul class="mr20">
					<li class="clearfix"><em>搜房顾问手机</em>
						<div class="fuceng">
							<i></i>
						</div> <input type="text" id="sellerphone" name="sellerphone" value="${model.getCustomerPhone() }">
					</li>
					<li class="clearfix"><em>时间</em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli/help.png" height="16" width="16" /> </i>
							<p>时间段内“客户状态(当前)”为某一状态的订单</p>
						</div>
						<div class="time_tody">
							<%
								/*@Html.Action("RenderDateSpanWidthCSS", "Common", new { hasLabel = false, suffix =
								 "CurrentState", widthCSS = 90 })*/
							%>
						</div></li>
					<li class="clearfix"><em>时间</em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli//help.png" height="16" width="16" /> </i>
							<p>时间段内有过“客户状态(历史)”的订单</p>
						</div>
						<div class="time_tody">
							<%
								/*@Html.Action("RenderDateSpanWidthCSS", "Common", new { hasLabel = false, begin =
								 ViewBag.bTime, end = ViewBag.eTime, widthCSS = 90 })*/
							%>
						</div></li>
				</ul>
				<ul class="mr20">
					<li class="clearfix"><em>订单状态</em> <select id="userState" style="margin-left: 42px;">
							<option value="" selected="selected">请选择</option>
							<option value="0">待付款</option>
							<option value="1">已付款</option>
							<option value="4">已消费</option>
							<option value="3">已退款</option>
							<option value="5">申请退款</option>
							<option value="10">退款申请未通过</option>
							<option value="9">已退房</option>
					</select></li>
					<li class="clearfix"><em>审核状态(当前)</em> <select name="auditedname" id="auditedname">
							<option value="" selected="selected">请选择</option>
							<option value="daofang_audited_status" key="0">到访审核</option>
							<option value="renchou_audited_status" key="5">认筹审核</option>
							<option value="rengou_audited_status" key="1">认购审核</option>
							<option value="qianyue_audited_status" key="2">签约审核</option>
							<option value="refund_audited_status" key="3">退款审核</option>
							<option value="tuirengou_audited_status" key="4">退房审核</option>
					</select> <select name="daofang_audited_status" id="daofang_audited_status" style="display: none">
							<option value="1">待审核</option>
							<option value="0">编辑中</option>
							<option value="2">客服已审核</option>
							<option value="-2">退回</option>
					</select> <select name="rengou_audited_status" id="rengou_audited_status" style="display: none">
							<option value="1">待审核</option>
							<option value="0">编辑中</option>
							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>

							<option value="-2">退回</option>
					</select> <select name="qianyue_audited_status" id="qianyue_audited_status" style="display: none">
							<option value="1">待审核</option>
							<option value="0">编辑中</option>
							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>
							<option value="-2">退回</option>
					</select> <select name="refund_audited_status" id="refund_audited_status" style="display: none">
							<option value="0">待审核</option>

							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>
							<option value="5">分公司总经理已审核</option>
							<option value="10">地方财务已审核</option>
							<option value="13">总部财务已审核</option>
							<option value="6">地方出纳已审核</option>
							<option value="-2">退回</option>
					</select> <select name="tuirengou_audited_status" id="tuirengou_audited_status" style="display: none">
							<option value="0">待审核</option>

							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>
							<option value="8">普通客服已上传OA审批单</option>
							<option value="5">分公司总经理已审核</option>
							<option value="10">地方财务已审核</option>
							<option value="13">总部财务已审核</option>
							<option value="6">地方出纳已审核</option>
							<option value="-2">退回</option>
					</select> <select name="renchou_audited_status" id="renchou_audited_status" style="display: none">
							<%
								/*认筹状态:-2:退回;0:初始状态可编辑/不能审核;1:已提交待审核;2:客服已审核;*/
							%>
							<option value="1">待审核</option>
							<option value="2">客服已审核</option>
							<option value="-2">退回</option>
					</select> <em class="ml10">户型</em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli/help.png" height="16" width="16" /> </i>
							<p>审核通过的认购跟进中所填写的居室</p>
						</div> <select name="houseInfoType" id="houseInfoType">
							<option value="">全部</option>
							<option value="1">一居</option>
							<option value="2">二居</option>
							<option value="3">三居</option>
							<option value="4">四居</option>
							<option value="5">五居</option>
					</select></li>
					<li class="clearfix"><em>审核状态(历史)</em> <select name="auditname" id="auditname">
							<option value="" selected="selected">请选择</option>
							<option value="daofang_audit_status" key="0">到访审核</option>
							<option value="renchou_audit_status" key="5">认筹审核</option>
							<option value="rengou_audit_status" key="1">认购审核</option>
							<option value="qianyue_audit_status" key="2">签约审核</option>
							<option value="refund_audit_status" key="3">退款审核</option>
							<option value="tuirengou_audit_status" key="4">退房审核</option>
					</select> <select name="daofang_audit_status" id="daofang_audit_status" style="display: none">
							<option value="1">待审核</option>
							<option value="0">编辑中</option>
							<option value="2">客服已审核</option>
							<option value="-2">退回</option>
					</select> <select name="rengou_audit_status" id="rengou_audit_status" style="display: none">
							<option value="1">待审核</option>
							<option value="0">编辑中</option>
							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>

							<option value="-2">退回</option>
					</select> <select name="qianyue_audit_status" id="qianyue_audit_status" style="display: none">
							<option value="1">待审核</option>
							<option value="0">编辑中</option>
							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>
							<option value="-2">退回</option>
					</select> <select name="refund_audit_status" id="refund_audit_status" style="display: none">
							<option value="0">待审核</option>

							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>
							<option value="5">分公司总经理已审核</option>
							<option value="10">地方财务已审核</option>
							<option value="13">总部财务已审核</option>
							<option value="6">地方出纳已审核</option>
							<option value="-2">退回</option>
					</select> <select name="tuirengou_audit_status" id="tuirengou_audit_status" style="display: none">
							<option value="0">待审核</option>

							<option value="2">客服已审核</option>
							<option value="3">客服主管已审核</option>
							<option value="8">普通客服已上传OA审批单</option>
							<option value="5">分公司总经理已审核</option>
							<option value="10">地方财务已审核</option>
							<option value="13">总部财务已审核</option>
							<option value="6">地方出纳已审核</option>
							<option value="-2">退回</option>
					</select> <select name="renchou_audit_status" id="renchou_audit_status" style="display: none">
							<%
								/*认筹状态:-2:退回;0:初始状态可编辑/不能审核;1:已提交待审核;2:客服已审核;*/
							%>
							<option value="1">待审核</option>
							<option value="2">客服已审核</option>
							<option value="-2">退回</option>
					</select> <em class="ml10">时间</em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli/help.png" height="16" width="16" /> </i>
							<p>时间段内所选产生某一跟进审核节点的订单</p>
						</div>
						<div class="time_tody">
							<%
								/*@Html.Action("RenderDateSpanWidthCSS", "Common", new { hasLabel = false, begin =
								 ViewBag.audit_BTime, end = ViewBag.audit_ETime, suffix = "audit", widthCSS = 90 })*/
							%>
						</div></li>
				</ul>
			</dd>
		</dl>
		<dl>
			<dt>
				房源查询条件<span class="uppng"></span>
			</dt>
			<dd class="genjintiaojian dis clearfix">
				<ul class="mr10">
					<li class="clearfix"><em>订单级别</em> <select id="isBindProj" style="margin-left:58px;">
							<option value="" selected="selected">全部</option>

							<option value="40">平台房源</option>
							<option value="20">电商上架设置定金房源</option>
							<option value="30">电商上架未设置定金房源</option>
							<option value="50">户型</option>
							<option value="00">楼盘</option>
					</select></li>
					<li class="clearfix"><em>房源状态（历史）</em> <select name="salesSatusHistory" id="salesSatusHistory">
							<option value="" selected="selected">全部</option>
							<option value="10">可售</option>
							<option value="40">已锁定</option>
							<option value="0">已售出</option>
					</select></li>

				</ul>
				<ul class="mr10">
					<li class="clearfix"><em>房源状态（当前）</em> <select id="salesSatus">
							<option value="" selected="selected">全部</option>
							<option value="10">可售</option>
							<option value="40">已锁定</option>
							<option value="0">已售出</option>
					</select></li>
					<li class="clearfix"><em>时间</em>
						<div class="time_tody">
							<%
								/*@Html.Action("RenderDateSpanWidthCSS", "Common", new { hasLabel = false, suffix =
								 "SalesState", widthCSS = 90 })*/
							%>
						</div></li>

				</ul>
			</dd>
		</dl>
		<dl>
			<dt>
				其它查询条件<span class="uppng"></span>
			</dt>
			<dd class="genjintiaojian dis clearfix">
				<ul class="mr10">
					<li class="clearfix"><em>是否金融贷款申请</em> <select name="isHaveLoan" id="isHaveLoan">
							<option value="" selected="selected">全部</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select></li>
				</ul>
				<ul class="mr10">
					<li class="clearfix"><em> 数据范围 </em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli/help.png" height="16" width="16" /> </i>
							<p style="min-width: 300px; padding: 5px 10px;">
								全部：以归属人维度查询所有订单，需选择一个客户历史状态，确定是哪一种归属人<br> 销售跟进中：当前绑定搜房顾问订单的维度，不包括被放弃进入公客池的订单<br>公客池：以归属人维度查询公客池中的订单，需选择一个客户历史状态，确定是哪一种归属人
							</p>
						</div> <select name="dataDetail" id="dataDetail">
							<option value="all">全部</option>
							<option value="following" selected="selected">销售跟进中</option>
							<option value="giving">公客池</option>
					</select></li>
				</ul>
				<ul class="mr10">
					<li class="clearfix"><em style="margin-left:10px;">超过</em> <select name="weiQianyueDays" id="weiQianyueDays">
							<option value="<%=WeiQianyueOption._enumdefault%>" selected="selected">请选择</option>
							<option value="<%=WeiQianyueOption._60days%>">60天</option>
							<option value="<%=WeiQianyueOption._90days%>">90天</option>
							<option value="<%=WeiQianyueOption._120days%>">120天</option>
					</select><em> 未签约 </em>
						<div class="fuceng">
							<i><img src="<%=scriptPath%>Image/DingdanGuanli//help.png" height="16" width="16" /> </i>
							<p style="min-width: 300px; padding: 5px 10px;">认购第一次审核通过之后，距当前时间为标准，超过多少天还未签约审核通过</p>
						</div></li>
				</ul>
			</dd>

		</dl>
		<div style="display:none;">
			<td>是否流转</td>
			<td><select id="TransferType">
					<option value="">请选择</option>
					<option value="1">流转</option>
					<option value="0">非流转</option>
			</select></td>
			<td class="td_text td_text2">跟进状态</td>

			<td class="td_normal"><select id="followState">
					<option value="">请选择</option>
					<option value="0">未跟进</option>
					<option value="1">已跟进</option>
			</select></td>

			<td class="td_text td_text2">推广专员</td>
			<td class="td_input td_input1"><input type="text" name="name" value="" id="tuiguangName" /></td>
			<td>案场姓名</td>
			<td class="td_input1"><input type="text" name="name" value="" id="liveName" /></td>
		</div>
		<div class="but_daochu">
			<div class="but_daochu_cont">
				<input type="button" id="btnSearch" class="slbutton" value="查询">

			</div>
		</div>
		<iframe id="exportContainer" style="display: none;"></iframe>
	</div>
	<div class="slshowPart">
		<table class="Result_table" id="table-javascript" data-height=""></table>
		<div style="display:none">
			<table class="sldatatable">
				<!--最终加载的数据都存在这个table里-->
				<tr class="sldatatableheader" style="height: 0px;"></tr>
			</table>
		</div>
		<div class="">
			<table class="sldatatabletemplate">
				<tr class="sldatatablerow">
					<td><text id='useHelper'>{followup}</text></td>
				</tr>
			</table>
		</div>
	</div>
	<div style="clear:both"></div>
	<jsp:include page="../sys/RenderPaging.jsp" flush="true" />
	<div id="formLoad" style="display: none; width: 100%">
        <textarea style="width: 100%; height: 100px" id="content"></textarea><p style="font-size: large; color: red"></p>
    </div>
	<article class="loadingmask" style="background-color: rgba(238, 238, 238, 0.4)"></article>
	
    <span class="loadImg">
        <img style="width:20px;margin-bottom:10px" src="<%=scriptPath %>Image/loading.gif" alt="" title="" /><br />
        <span id="loadingMsg">正在查询，请稍后......</span>
    </span>
	<script type="text/javascript" id="readyFuntion">
		$(function() {
			//初始化控件显示
			$("#liveName").val('${model.getLivename()}');
			$("#realname").val('${model.getCustomerRealName()}');
			$("#phone").val('${model.getCustomerPhone()}');

			$("select").addClass("temp_Select");
			//$("#btnExport").click(exportExcel);

			$('#renGouBtnExport').click(function() {
				//判断是否选取时间段
				if ($("#dtBeginaudit").val() != "" && $("#dtEndaudit").val() != "") {
					//renGouExprotExcel();
				} else {
					alert("请在“审核状态时间”中选择一个时间段！");
					return false;
				}
			});

			$("#auditname").change(function(event) {
				$("#auditname option").each(function() {
					if ($(this).val() != "") {
						$("#" + $(this).val()).hide();
					}
				});
				if ($(this).val() != "") {
					$("#" + $(this).val()).show();
				}

			});
			$("#auditedname").change(function(event) {
				$("#auditedname option").each(function() {
					if ($(this).val() != "") {
						$("#" + $(this).val()).hide();
					}
				});
				if ($(this).val() != "") {
					$("#" + $(this).val()).show();
				}

			});
			//$("#state").find("[value=" + model.state + "]").first().attr("selected", "selected");
			//$("#behaviorid").find("[value=" + model.behaviorid + "]").first().attr("selected", "selected");
			//$("#auditname").find("[value=" + model.verifyType + "]").attr("selected", "selected");
			/*if (model.verifyType != "") {
			    $("#" + model.verifyType).show();
			    $("#" + model.verifyType).find("[value=" + model.verifyStatus + "]").first().attr("selected", "selected");
			}*/
			search();
			$('#mediumflag').change(function() {
				checkCustomerSource($(this).find(':selected').val());

			});
			$('#projectInput').css("width", "100px");
			$(window).resize(function() {
				$(".fixed-table-container").height($('.slshowPart').innerHeight() -152);
			});

			height = $('.dingdan_qudao').innerHeight() - 34;
			//GetGuwenInfo();
			$(".fuceng").hover(function() {
				$(this).find("p").show();
			}, function() {
				$(this).find("p").hide();
			});
			$(".fuceng").each(function(index, el) {
				var top = $(this).find('i').offset().top, left = $(this).find('i').offset().left;
				$(this).find("p").css({
					"top" : top + $(this).find('i').height(),
					"left" : left + $(this).find('i').width()
				});
			});
			$(".dingdan_qudao dl").each(function(index, el) {
				$(el).find('dt').find("span").on("click", function() {
					$(this).parents("dt").siblings("dd").slideToggle("normal", function() {
						$(window).resize();
					});
					$(this).toggleClass('uppng');
					$(el).find('.fuceng').each(function() {
						var top = $(this).find('i').offset().top, left = $(this).find('i').offset().left;
						$(this).find("p").css({
							"top" : top + $(this).find('i').height(),
							"left" : left + $(this).find('i').width()
						});
					});
				});
			});
		});
	</script>
	<script id="getDataStr">
		function getDataStr() {
			var data = "Random=" + encodeURI($.date.now());
			//data = data + "&sellername=" + encodeURI($("#sellername").val());
			var salesId = $("#userTypeSelect").attr("salesid");
			if (salesId != undefined && salesId != '') {
				data = data + "&salesId=" + encodeURI(salesId);
			}

			data = data + "&sellerphone=" + encodeURI($("#sellerphone").val());
			data = data + "&city=" + encodeURI($("#citySelect").find("option:selected").text());
			data = data + "&realname=" + encodeURI($("#realname").val());
			data = data + "&phone=" + encodeURI($("#phone").val());
			//data = data + "&ProjName=" + encodeURI($("#projectInput").val());
			//如果有newCode就按照newCode取
			//data = data + "&NewCode=" + $("#projectInput").attr("newcode");
			data = data + "&state=" + encodeURI($("#state").val());
			data = data + "&mediumflag=" + encodeURI($("#mediumflag").val());
			data = data + "&customerSource=" + encodeURI($('#customerSource').find(':selected').val());
			data = data + "&fromtext=" + encodeURI($("#fromtext").val());
			data = data + "&behaviorid=" + encodeURI($("#behaviorid").val());
			//data = data + "&begintime=" + encodeURI($("#dtBegin").val());
			data = data + "&IsFollowUp=" + $("#followState").find(":selected").val();
			if ($("#dtEnd").val() != "") {
				//data = data + "&endtime=" + encodeURI($("#dtEnd").val() + " 23:59:59");
			}
			if ($("#auditname").val() != "") {
				data = data + "&auditType=" + $("#auditname").find(":selected").first().attr("key");
				data = data + "&auditStatus=" + encodeURI($("#" + $("#auditname").val()).val());
			}
			if ($("#auditedname").val() != "") {
				data = data + "&auditedType=" + $("#auditedname").find(":selected").first().attr("key");
				data = data + "&auditedStatus=" + encodeURI($("#" + $("#auditedname").val()).val());
			}
			//data = data + "&currentPage=" + encodeURI($("#txtCurrentPage").val());
			//data = data + "&pageSize=" + encodeURI($("#txtPageSize").val());
			data = data + "&userState=" + $("#userState").val();
			data = data
					+ "&liveName="
					+ ('${model.getLivename()}' == '' ? encodeURI($("#liveName").val())
							: encodeURI('${model.getLivename()}'));
			data = data + "&tuiguangName=" + encodeURI($("#tuiguangName").val());
			data = data + "&isBindProj=" + $("#isBindProj").val();
			data = data + "&isTransfer=" + encodeURI($("#TransferType").val());
			//data = data + "&audit_BTime=" + encodeURI($("#dtBeginaudit").val());
			data = data
					+ "&audit_ETime="
					+ encodeURI($.string.isNullOrEmpty($("#dtEndaudit").val()) ? ""
							: ($("#dtEndaudit").val() + " 23:59:59"));
			data = data + "&_isDynamic=1";
			data = data + "&salesSatus=" + encodeURI($('#salesSatus').find(':selected').val());
			data = data + "&salesSatusHistory=" + encodeURI($('#salesSatusHistory').find(':selected').val());
			//data = data + "&salesSatusBTime=" + encodeURI($("#dtBeginSalesState").val());
			data = data
					+ "&salesSatusETime="
					+ encodeURI($.string.isNullOrEmpty($("#dtEndSalesState").val()) ? ""
							: ($("#dtEndSalesState").val() + " 23:59:59"));
			//data = data + "&currentStateBTime=" + encodeURI($("#dtBeginCurrentState").val());
			data = data
					+ "&currentStateETime="
					+ encodeURI($.string.isNullOrEmpty($("#dtEndCurrentState").val()) ? "" : ($("#dtEndCurrentState")
							.val() + " 23:59:59"));
			data = data + "&isHaveLoan=" + encodeURI($('#isHaveLoan').find(':selected').val());
			data = data + "&dataDetail=" + encodeURI($('#dataDetail').find(':selected').val());
			data = data + "&houseInfoType=" + encodeURI($('#houseInfoType').find(':selected').val());
			data = data + "&weiQianyueDays=" + encodeURI($('#weiQianyueDays').find(':selected').val());
			return data;
		}
	</script>
	<script type="text/javascript" id="search">
		function search() {
			//alert(getDataStr());
			loadingShow("正在查询，请稍后......");
			$.ajax({
                async: true,
                type: "POST",
                url: "<%=basePath%>CustomerFollowUp/Search.do",
				cache : false,
				timeout : 60 * 60 * 1000,
				dataType : "json",
				data : getDataStr(),
				success : function(result) {
					//$(".sldatatablefix tbody").empty();
					$(".sldatatable .sldatatablerow").remove();
					if (result != null && result.Message == "Success") {
						ResetSearch(result.RowsCount);
						$('#table-javascript').bootstrapTable('destroy').bootstrapTable({
							data : result.Rows,
							height : height,
							striped : true,
							//search: true,
							pageSize : $('#txtPageSize').val(),
							//showColumns: true,
							minimumCountColumns : 4,
							columns : [ {
								field : 'no',
								title : '序号',
								align : 'center'
							}, {
								class : '_minWidth65',
								field : 'city',
								title : '城市',
								align : 'center'
							}, {
								field : 'realName',
								title : '客户姓名',
								align : 'center'
							}, {
								field : 'phone',
								title : '客户手机',
								align : 'center'
							}, {
								class : '_minWidth152',
								field : 'projName',
								title : '楼盘名称',
								align : 'center'
							}, {
								class : '_minWidth100',
								field : 'newCode',
								title : '楼盘ID',
								align : 'center'
							}, {
								class : '_minWidth180',
								field : 'huxingInfo',
								title : '户型信息',
								align : 'center'
							}, {
								class : '_minWidth152',
								field : 'gengjin',
								title : '操作',
								align : 'center'
							} ]

						});

						if ($("#behaviorid").find(":selected").val().length == 0) {
							$(".hTimeShow").addClass("hideTime");
						} else {
							$(".hTimeShow").removeClass("hideTime");
						}

					}

					else {
						if (result != null) {//处理cookie超时
							if (result.Message == "TimeOut") {
								window.alert('登录超时，请重新登录！');
								window.top.location = '/Login.html';
							} else {
								alert(result.Message);
							}
						} else {
							$('#table-javascript').bootstrapTable('destroy').bootstrapTable({
								columns : [ {
									field : 'NoData',
									title : '查无数据',
									align : 'center',
								} ]
							});
						}
					}
					loadingHide();
				}
			});
		}
	</script>
	<script>
		function loadingShow(loadingmsg) {
			$('#loadingMsg').text(loadingmsg);
			$(".loadImg").css('margin-top', -$(".loadImg").height() / 2 + 'px');
			$(".loadImg").css('margin-left', -$(".loadImg").width() / 2 + 'px');
			$('.loadingmask').show();
			$('.loadImg').show();
		}

		function loadingHide() {
			$('.loadingmask').hide();
			$('.loadImg').hide();
		}
	</script>
</body>
</html>
