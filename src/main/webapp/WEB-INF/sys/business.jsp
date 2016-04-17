<%@ page language="java" import="java.util.*,com.fang.common.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=Config.TitlePrefix%></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<jsp:include page="includePart.jsp" flush="true" />
</head>
<body>
	<jsp:include page="SharePart.jsp" flush="true" />
	<!--CSS部分-->
	<!--Html部分-->

	<jsp:include page="headerPart.jsp" flush="true" />
	<div id="myHeader" class="ui-layout-north ui-layout-pane ui-layout-pane-north header">
		<div style="height: 42px; width: 100%"></div>
	</div>
	<div class="ui-layout-west" style="overflow: hidden; background: #FFFFFF; height: 100%;">
		<text>
			<div id="accordion" style="overflow: hidden; background: #FFFFFF; width: 100%; height: 100%;">
				<!-------------------------------------------->
				<!--<h3><a href="#">业务管理</a></h3> -->
				<div
					style="margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px; background: #FFFFFF; width: 100%; height: 100%; overflow-y: auto; overflow-x: hidden;"
					class="sidebartree">
					<div id="businessMenu" class="slmenu" style="float: left;"></div>
				</div>
				<!-------------------------------------------->
			</div>
		 </text>
	</div>
	<jsp:include page="FooterPart.jsp" flush="true" />

	<div class="ui-layout-center" style="overflow: hidden;">
			<div id="divFullScreen" title="最大" class="slfullscreenbutton"></div>
			<div id="tabs" style="height: 100%; width: 100%;">
				<div id="tabsHeader" class="sltabsheader">
					<ul style="height: auto">

					</ul>
				</div>
				<div id="tabsContent" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"></div>
			</div>
		</div>

	<script type="text/javascript">
		$(function() {
			var layout = $('body').layout();
			var divFullScreen = $("#divFullScreen");
			divFullScreen.float({
				position : "rm"
			});
			divFullScreen.bind("click", function() {
				if (divFullScreen.attr("title") == "最大") {
					layout.close("south");
					layout.close("east");
					layout.close("west");
					layout.close("north");
					divFullScreen.attr("title", "切换");
				} else {
					layout.open("south");
					layout.open("east");
					layout.open("west");
					layout.open("north");
					divFullScreen.attr("title", "最大");
				}
			});
		});
	</script>
	<!--JavaScript部分-->
	<script type="text/javascript">
		{
			$(function() {
				$.layout.initialize();
				$('#myHeader').attr('style', 'height:42px');
				$('#accordion').accordion({
					fillSpace : true,
					'clearStyle' : true
				});
				$('#tabs').tabs();

				$(document).everyTime(1000, function(i) {
					$('#accordion').accordion("resize");
					var tabsContentHeight = $("#tabs").height() - $("#tabsHeader").height() - 5;
					if ($("#tabsContent").height() != tabsContentHeight) {
						$("#tabsContent").css("height", tabsContentHeight);
					}
				});
			});
		}
	</script>
	<%
		if (Identity.isIsAuthenticated()) {
	%>
	<text> <!--SearchMenu--> 
	<script type="text/javascript">
		$.menu.initialize("businessMenu", '<%=basePath%>/sys/getMenu.do?Random=' + $.date.now(), null, false, false, false,
				function(id, name, tree) {
			
					var tabitemType = "Business";
					var tabitemID = id;
					var tabitemName = name;
					var tabitemUrl = tree.getUserData(id, "url");
				    //alert(tabitemUrl);
					if (tabitemUrl != '' && tabitemUrl != undefined) {
						tabitemUrl = tabitemUrl + "?Random=" + $.date.now();

						$.tabs.openMenu(tabitemType, tabitemID, tabitemName, tabitemUrl);
					}
				});
	</script> 
	</text>

	<%
		} else {
	%>
	<text> 对不起，您没有权限！ </text>
	<%
		}
	%>

	<script type="text/javascript">
		//检查是否绑定通行证

		$.tabs.openMenu("Business", "LEVEL0_08", "首页", "<%= basePath%>UserIndex/DefaultIndex.do");

		$.ajax({
			type : "post",
			timeout : 60 * 60 * 1000,
			url : "<%=basePath%>/sys/checkIsBindingPassport.do?",
			success : function(result) {
				if (result == "no") {
					var url = "/Business/OpenWarning.html";
					$.ifdialog(encodeURI(url), 320, 220);
					$("#ifdiv").css("top", "30%");
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert(textStatus);
				alert(errorThrown);
			}
		});
	</script>
</body>

</html>
