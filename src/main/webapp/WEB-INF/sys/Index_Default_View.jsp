<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="includePart.jsp" flush="true" />
<link href="../Resource/Temp/Css/style.css" rel="stylesheet" />
<link href="../Resource/Temp/Css/loading.css" rel="stylesheet" />
<link href="http://js.soufunimg.com/zbs/newhouse/css/sfpc_base.css" type="text/css" rel="stylesheet">
<div class="zb_lader ui-layout-pane-center backg tf " style="padding-left: 0px;">
    <div class="loading">
        <div class="loading_lf fl" style="width:110px;height:110px;">
            <img src="" width="110" height="110" class="vm" alt="" />
        </div>
        <div class="loading_rt fl ml20" style="width:80%">
            <ul>
                <li>21345678<a href="javascript: window.parent.$.tabs.openMenu('Business', '个人设置', '个人设置', '@(Model.SettingUrl)',true)" style="color:#0066ff;position:absolute;left:290px;">个人设置</a></li>
                <li><div id="OADiv" style="display:none;">OA待办事宜&nbsp;<a href="#" target="_blank" id="OAToDoList">正在加载···</a></div></li>
            </ul>
        </div>
    </div>

</div>