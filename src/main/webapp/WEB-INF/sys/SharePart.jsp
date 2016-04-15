<%@ page language="java" import="java.util.*,com.fang.common.Config" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="slbusyboxloading" style="">执行中...</div>
<script type="text/javascript">
    {
        try {
            $(".slbusyboxloading").bind("ajaxStart", function () {
                $(this).show().fadeTo("fast", 0.8);
                //CreateBackDiv();
                $('.slbutton,.inputButton,#btnSearch').attr('disabled', 'disabled').addClass('disabled');
            }).bind("ajaxStop", function () {
                $(this).hide();
                //RemoveBackDiv()
                $('.slbutton,.inputButton,#btnSearch').removeAttr('disabled').removeClass('disabled');
            }).bind("ajaxError", function (event, xhr, options, exc) {
                //登录超时，或者没有权限
                if (xhr.status == 403) {
                    window.alert(xhr.responseText);
                    window.top.location = '<%=Config.LoginUrl%>';
				}
				//找不到路径
				else if (xhr.status == 404) {
					window.alert(xhr.responseText);
				}
				//程序内部错误
				else if (xhr.status == 600) {
					window.alert(xhr.responseText);
				}
			});
		} catch (error) {
			RemoveBackDiv();
		}
		try {
			$(".slbusyboxloading").float({
				position : "r"
			});
		} catch (error) {
		}

		$(document).ready(function() {
			try {

				$.expandShrink.initialize("slexpandShrink", "sloperatePart", 110);
				$(".slexpandShrink").bind("click", ctrlCss);
				function ctrlCss() {
					if ($(".slexpandShrink").hasClass("slexpandShrink-shrink")) {
						$(".slshowPart").css({
							"margin-top" : parseInt($(".sloperatePart").height() + 20) + "px"
						});
					} else {
						$(".slshowPart").css({
							"margin-top" : "5px"
						});
					}
				}
			} catch (error) {
			}
		});

	}
</script>