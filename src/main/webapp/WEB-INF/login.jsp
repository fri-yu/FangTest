<%@ page language="java" import="java.util.*,com.fang.common.Config" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<%
	String version = Config.Version;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>-登录</title>
<link rel="icon" href="<%=Config.ScriptPath%>Image/Logo.ico?Version=<%=Config.Version%>" type="image/x-icon" />
<link rel="shortcut icon" href="<%=Config.ScriptPath%>Image/Logo.ico?Version=<%=Config.Version%>" type="image/x-icon" />
<link href="<%=Config.ScriptPath%>Css/style.css?Version=<%=Config.Version%>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript"
	src="<%=Config.ScriptPath%>Script/jquery.busybox/jquery.busybox.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.bt.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.metadata.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.excanvas.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.bgiframe.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.string.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.hotkeys.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.maskedinput.js?Version=<%=Config.Version%>"></script>
<link href="<%=Config.ScriptPath%>Script/jquery.ui/jquery.ui.css?Version=<%=Config.Version%>" type="text/css"
	rel="stylesheet" />
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.ui/jquery.ui.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.contextmenu.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.guid.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.timer.js?Version=<%=Config.Version%>"></script>
<link href="<%=Config.ScriptPath%>Script/jquery.layout/jquery.layout.css?Version=<%=Config.Version%>" type="text/css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=Config.ScriptPath%>Script/jquery.layout/jquery.layout.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.cookie.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.hoverintent.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.contextmenu.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.float.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.swfobject.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript"
	src="<%=Config.ScriptPath%>Script/jquery.tinymce/jquery.tinymce.js?Version=<%=Config.Version%>"></script>
<link href="<%=Config.ScriptPath%>Script/dhtmlxtree/dhtmlxtree.css?Version=<%=Config.Version%>" type="text/css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=Config.ScriptPath%>Script/dhtmlxtree/dhtmlxcommon.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/dhtmlxtree/dhtmlxtree.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript"
	src="<%=Config.ScriptPath%>Script/dhtmlxtree/dhtmlxtree_ed.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/ofc/json2.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/ofc/swfobject.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/ofc/ofc.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/ofc/open_flash_chart.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/ofc/swfobject.helper.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/jquery.soufunlab.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/calendar2.js?Version=<%=Config.Version%>"></script>
<script type="text/javascript" src="<%=Config.ScriptPath%>Script/base64.js?Version=<%=Config.Version%>"></script>
<script src="<%=Config.ScriptPath%>Script/jquery.uploadify/jquery.uploadify.js?Verson=<%=Config.Version%>"></script>
<script src="<%=Config.ScriptPath%>easy-ui/jquery.easyui.min.js?Verson=<%=Config.Version%>"></script>
<link href="http://js.soufunimg.com/zbs/newhouse/css/sfpc_base.css" type="text/css" rel="stylesheet">
<link href="<%=Config.ScriptPath%>Css/loading.css?Version=<%=Config.Version%>" rel="stylesheet" type="text/css" />
<link href="<%=Config.ScriptPath%>Css/Site.css?Version=<%=Config.Version%>" rel="stylesheet" type="text/css" />
<link href="<%=Config.ScriptPath%>easy-ui/easyui.css?Version=<%=Config.Version%>" rel="stylesheet" type="text/css" />
<style type="text/css">
.btnGetYanZhengMa { /*width: 100px;*/
	
}

.forgetPwd input[type=text] {
	width: 100%;
}

.forgetPwd table td {
	font-size: 16px;
}

.forgetPwd table tr {
	height: 30px;
}

.panel-title {
	font-size: 18px;
	color: white;
	margin: 7px 0 0 8px;
}

.panel-header {
	background-color: #c00 !important;
	height: 25px;
}

.table1 {
	padding: 0 0 0 2px;
}
</style>

</head>
<body id="login">
	<!--Html部分-->
	<div class="main_1200 tf">
		<div class="header clearfix">
			<div class="logo fl">
				<img src="<%=Config.ScriptPath%>Image/logo.png" width="177" height="53">
			</div>
			<span class="spe fl">|</span>
			<p class="fl"><%=Config.TitlePrefix%></p>
		</div>
		<div class="loading_box pr">
			<div class="house fl">
				<img src="<%=Config.ScriptPath%>Image/house.png" alt="" class="vm" />
			</div>
			<div class="loading_nr fl">
				<div class="loading_inf">
					<div style="margin-left: 25px">
						<p style="margin-left: -45px">用户登录</p>
						<div>
							<span style="margin-left: 10px; font-size: 14px; vertical-align: middle">用户名:</span> <input id="txtEmail"
								type="text" value=""
								style="margin: 8px 5px; height: 25px; font-size: 14px; font-family: 微软雅黑; vertical-align: middle;"
								placeholder="请输入用户名" />
							<%=Config.EmailSuffix%>
						</div>

						<div>
							<span style="margin-left: 10px; font-size: 14px; vertical-align: middle">密<em style="margin-right: 1em;"></em>码:</span>
							<input id="txtPassword" type="password" value=""
								style="margin: 30px 5px; height: 25px; font-size: 14px; font-family: 微软雅黑; vertical-align: middle;"
								placeholder="请输入密码" />
						</div>
						<input id="btnLogin" type="button" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" class="load_btn cp tf ts_linear"
							style="margin-left: 10px; width: 221px" />
					</div>
					<br /> <br /> <a style="display: inline; padding-left: 65px" href="#" id="btnForgetPwd">忘记密码 ? 点击找回</a> <span
						style="display: inline; width: 5px">| </span> <a style="display: inline" href="~/help/Qa.html" target="_blank">公告</a>
				</div>
			</div>
			<div class="house_bg">
				<img src="<%=Config.ScriptPath%>Image/house_bg.png">
			</div>
			<div class="tree">
				<img src="<%=Config.ScriptPath%>Image/tree.png">
			</div>
		</div>
		<div class="footer">
			<p>北京搜房科技发展有限公司&nbsp;版权所有</p>
		</div>
	</div>

	<!--忘记密码弹窗-->
	<div class="forgetPwd" id="forgetPwd" style="display: none;padding: 5px 0 5px 5px;">
		<table class="table1">
			<tr>
				<td style="width:20%">用户名：</td>
				<td style="width:42%"><input type="text" class="uName" id="uName" />
				</td>
				<td></td>
			</tr>
			<tr>
				<td>验证码：</td>
				<td><input type="text" id="yanZhengMa" />
				</td>
				<td></td>
			</tr>
		</table>
		<table>
			<tr class="trPhone" style="display:none;">

				<td>手机号： <label id="txtPhone" class="txtPhone"></label> <input type="button" id="btnGetYanZhengMa"
					class="btnGetYanZhengMa slbutton" value="发送验证码" style="margin-left:50px;width:100px" /></td>
			</tr>
		</table>
		<table>
			<tr>
				<td style="width:31%"></td>
				<td><input type="button" id="btnSure" value="提交" class="slbutton" /></td>
				<td><input type="button" id="btnCancel" value="取消" class="slbutton" /></td>

			</tr>
		</table>

	</div>
	<!--JavaScript部分-->
	<script type="text/javascript">
		{
			var time = 60;
			$(function() {
				$("#btnLogin").bind(
						"click",
						function(event) {
							try {
								$("*").btOff();
							} catch (error) {
							}
							var data = {};
							var email = $("#txtEmail").val();
							var password = $("#txtPassword").val();
							//判断是邮箱 还是手机号码
							var phone = /^1\d{10,11}$/;
							if (phone.test(email)) {
								alert("请输入正确格式的搜房邮箱");
								return false;
							}
							
							data = {
								Email : encodeURI(Base64_Encrypt(email + "<%= Config.EmailSuffix%>" )),
								Password : encodeURI(Base64_Encrypt(password)),//密码加密传输
								Random : $.date.now()
							};
							
							if ($.string.isNullOrEmpty(email)) {
								$("#txtEmail").tooltip("邮箱不能为空！");
								event.stopPropagation();
								return;
							}
							if ($.string.isNullOrEmpty(password)) {
								$("#txtPassword").tooltip("密码不能为空！");
								event.stopPropagation();
								return;
							}

							$.ajax({
								async : true,
								type : "POST",
								url : "../login/enter.do",
								cache : false,
								timeout : 60 * 60 * 1000,
								dataType : "json",
								data : data,
								success : function(result) {
									if (result.success == '1') {
										window.location = "../sys/business.do";
									} else if (result.success == '-1') {
										window.location = "/Login/UpdatePwdPage.html?UserName="
												+ encodeURI(Base64_Encrypt(result.userName));
									} else {
										$("#btnLogin").attr("disabled", false);
										alert(result.message);
									}
								},
								beforeSend : function() {
									$("#btnLogin").attr("disabled", true);
								},
								complete : function() {

								}
							});
						});

				$(document).keydown(function(event) {
					if (event.keyCode == 13) {
						$("#btnLogin").click();
						event.preventDefault();
					}
				})
			});

			function setTime() {
				if (time > 0) {
					time = time - 1;
					$("#btnGetYanZhengMa").val(time);

				} else {
					clearInterval(InterValObj);
					$("#btnGetYanZhengMa").val("重新获取验证码");
					$("#btnGetYanZhengMa").css("backgroundColor", "#cc0000");
					time = 60;
				}

			}

			$("#btnForgetPwd").click(function() {
				$("#forgetPwd").css("display", "block").dialog({
					title : "找回密码",
					resizable : false,
					closable : false,
					modal : true,
					collapsible : false,
					minimizable : false,
					maximizable : false,
					shadow : false,
					width : 365

				});

			});

			$("#btnCancel").click(function() {
				$("#forgetPwd").dialog("close");
			});

			$("#uName").blur(function() {
				var username = $("#uName").val();
				if (username == '') {
					alert('用户名不能为空');
					return;
				}
				$.ajax({
					url : "/Login/GetPhone.do?",
					data : {
						username : username
					},
					async : false,
					dataType : "json",
					type : "post",
					success : function(result) {
						if (result.success == "查找成功") {
							$("#txtPhone").html(result.phone);
							$(".trPhone").css("display", "block");
						} else {
							$(".trPhone").css("display", "none");
							alert("该用户没有绑定手机号，请联系运维人员");
						}
					}

				});
			});

			$("#btnGetYanZhengMa").click(function() {
				if ($(this).val() != '重新获取验证码' && $(this).val() != '发送验证码') {
					return;
				}
				$("#btnGetYanZhengMa").css("backgroundColor", "#CCCCCC");
				var phone = $("#txtPhone").html();
				if (phone == '') {
					alert('手机号不能为空');
					return;
				}
				$("#btnGetYanZhengMa").val(time);
				InterValObj = setInterval(setTime, 1000);
				$.ajax({
					url : "/Login/SendCodeCon.do?",
					data : {
						phone : phone
					},
					async : false,
					dataType : "json",
					type : "post",
					success : function(result) {
						if (result.success == "验证码发送成功") {
							//alert(result.success);
							//$("#btnGetYanZhengMa").addClass("disabled");

							$.messager.show({
								showSpeed : 600,
								msg : "验证码发送成功",
								title : '提示',
								timeout : 2000
							});
						} else {

							alert(result.success);
						}
					}

				})
			});

			$("#btnSure").click(function() {
				var phone = $("#txtPhone").html();
				var username = $("#uName").val();
				var yanzhengma = $("#yanZhengMa").val();
				if (username == '') {
					alert("用户名不能为空");
					return;
				}
				if (yanzhengma == '') {
					alert("验证码不能为空");
					return;
				}
				$.ajax({
					url : "/Login/FindPwd.do?",
					data : {
						phone : phone,
						username : username,
						yanzhengma : yanzhengma
					},
					async : false,
					dataType : "json",
					type : "post",
					success : function(result) {
						if (result.success == "密码修改成功，当前密码为123456") {
							$("#forgetPwd").dialog("close");
							$("#txtPassword").val('');
							$("#txtEmail").val(username);
							alert(result.success);
						} else {
							alert(result.success);
						}
					}

				})
			});

		}
	</script>
</body>
</html>
