<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>西南院项目管理平台</title>
    <link rel="stylesheet" href="/static/front/css/form.css">
    <link rel="stylesheet" href="/static/css/login.css">
	<script src="/static/js/common/jquery.min.js"></script>
</head>
<body class="login">
    <div class="content">
        <div class="logo-title"><span class="logo"></span></div>
        <div id="errorMsgWrap" class="form-error errorMsgWrap"></div>
        <c:if test="${not empty error }"><div class="form-error errorMsgWrap" id="con-error">${error }<span class="glyphicon glyphicon-remove pull-right close-info"></span></div></c:if>
        <div class="fm-login-wrap">
        <form class="form-horizontal form y-form" id="form-login"  action="/admin/login" method="post">
            <div class="form-item">
                <div class="form-field">
                    <input type="text" name="username" class="form-text username-input required" placeholder="用户名/手机/邮箱" data-msg-required="请输入您的登录名或手机号或邮箱！"/>
                </div>
            </div>
            <div class="form-item">
                <div class="form-field">
                    <input type="password" name="password" id="password" class="form-text forget-pwd-input required" placeholder="密码" data-msg-required="请输入您的密码！"/>
                </div>
            </div>
            <div class="form-item">
                <div class="form-field">
                    <input type="text" name="captcha" class="form-text captcha-input y-login required sysvalidCaptcha" placeholder="验证码" data-msg-required="请输入验证码！">
                    <div class="capt-wrap"><img src="${ctx}/images/captcha.jpg" alt="点击刷新验证码" id="captcha" height="39" width="100"/></div>
                </div>
            </div>
            <!-- <div class="form-item form-radio-checkbox-wrap">
                <div class="form-field">
                    <label><input type="checkbox" value="true" class="form-checkbox" name="rememberMe">
                        <span>记住我</span>
                    </label>
                </div>
            </div> -->
            <div class="text-center">
                <button type="submit" class="login-btn">登 &nbsp;&nbsp; 录</button>
            </div>
        </form>
        </div>
        <p class="text-center">©2015 西南院项目管理平台 All rights reserved  </p>
    </div>
<script type="text/javascript">
$(function(){
 	$("#form-login").validate({focusInvalid: false,focusCleanup: true,
		validClass: "valid",onkeyup: false, errorElement: "span",
		errorPlacement:function(error,element){
			$('#errorMsgWrap').html(error).fadeIn();
		},
		submitHandler: function(form) {
			form.submit(); 
		}
	});
	$('#form-login input:text').focus(function(){
		$('#con-error').fadeOut(function(){$(this).remove();});
	});
	
	$("#captcha").click(function(){
		$(this).attr("src", "${ctx}/images/captcha.jpg?time=" + new Date().getTime());
		return false;
	});
}); 
</script>
</body>
</html>