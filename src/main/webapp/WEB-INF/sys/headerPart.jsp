<%@ page language="java" import="java.util.*,com.fang.common.Config" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<script type="text/javascript">
	//切换登录用户
	function ChangeLogin(id) {
		WriteCookie(id);
	}
	//写入cookie
	function WriteCookie(userId) {
		$.ajax({
			url : "/Login/ChangeLogin.do",
			type : "POST",
			data : {
				UserId : encodeURI(userId)
			},
			dataType : "json",
			async : false,
			success : function(res) {
				if (res.success) {
					window.location = "/Business.html";
				} else {
					window.location = "/Login/Exit.do";
				}
			}
		});
	}
</script>


<link href="<%=Config.ScriptPath%>/Css/newhouse_header.css?Version=<%=Config.Version%>" rel="stylesheet" />
<link href="<%=Config.ScriptPath%>/Css/newHouse_nav.css?Version=<%=Config.Version%>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/base64.js?Version=<%=Config.Version%>"></script>
<div class="ershou_nav clearfix">
	<div class="logo_nav jfl">
		<img style="margin-top:6px" src="../Resource/Image/logow3.png">
	</div>
	<div class="tip_nav jfl">
		<a href="#"><%=Config.TitlePrefix%></a>
	</div>
	<div class="user_nav user_nav1 jfr">
		<a href="/Login/Exit.do" target="_self">退出</a>
	</div>

	<div class="user_nav user_nav4 jfr divUpdate" id="divUpdate">
		<a onclick="changPassword()" id="updatePwd">修改密码</a>
	</div>

	<div class="juese_nav jfr">
		<span>&nbsp;</span> 角色切换 <b>&nbsp;</b>
		<div class="jian_nav"></div>
		<div class="juese_hover"></div>
	</div>
	<div class="user_nav jfr">
		您好，<span>@(user_static.RealName)</span>
	</div>
</div>
<script type="text/javascript">
	var url = window.location.href;
	if (url == 'http://channelsales.tao.fang.com/Business.html') {
		$(".divUpdate").css('display', 'none');
	}

	function SysUpdateInfoF() {
		clearInterval(timer);
		$("#SysGongGao").css('color', 'white');
		//$("#SysUpdateInfoF")[0].style.color="white";
		$("#SysGongGao").text("系统消息 (0)");

		window.parent.$.tabs.openMenu('Business', 'Business_Doc_SysUpdate', '系统消息',
				'/Doc/SysUpdateInfo.do?status=0&Docid=0');
		$.ajax({
			url : "/Doc/SysUpdateInfoRead.do",
			type : "POST",
			data : {
				UserId : encodeURI("user_static.ID")
			},
			dataType : "json",
			async : false,
			success : function(res) {
			}
		});
	}

	//测试session超时
	//var timeInterval;
	var totalTime = parseInt("@Config.ActivateMins");
	function countDown() {
		if (totalTime >= 0) {
			$.ajax({
				url : "/Login/GetIntervalCookie.do?t=" + Math.random(),
				dataType : "json",
				async : false,
				type : "get",
				success : function(data) {
					if (data.success) {

						totalTime = data.interval;
					}
				}
			});

			var mi = Math.floor(totalTime / 60);
			var ss = totalTime - mi * 60;
			if (mi < 10) {
				mi = "0" + mi;
			}
			if (ss < 10) {
				ss = "0" + ss;
			}
			var timeStr = +mi + ":" + ss;
			$("#timeResult").text(timeStr);
			totalTime = totalTime - 1;
		} else {
			clearInterval(timeInterval);
			window.location = '<%=basePath%>Login/Exit.do';
		}
	}

	//var timer = setInterval(fn, 1000);

	function changPassword() {
		//window.location = "/Login/UpdatePwdPage.html?UserName=" + '@User_Head.Name'+"&Personal=true&isEncrypt=true";
		var username = Base64_Encrypt("@User_Head.Name");

		window.parent.$.tabs.openMenu('Login', '修改密码', '修改密码', "/Login/UpdatePwdPage.html?UserName='" + username
				+ "'&Personal=true", true);
	};
</script>



