<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	
	管理员用户主页面
	
-->
<%
	String path = request.getContextPath();
%>

<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>管理员主页</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
		<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
		<style type="text/css">
			.head-l {
				float: right;
			}
		</style>
	</head>

	<body style="background-color:#f2f9fd;">
		<div class="header bg-main">
			<div class="logo margin-big-left fadein-top">
				<h1><img src="<%=request.getContextPath() %>/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />在线考试系统</h1>
			</div>
			<div class="head-l">
				<a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
				<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;
				<a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a>
			</div>
		</div>
		<div class="leftnav">
			<div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
			<h2><span class="icon-user"></span>个人设置</h2>
			<ul style="display:block">
				<li>
					<a href="<%=request.getContextPath() %>/pages/pass.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a>
				</li>
			</ul>
			<h2><span class="icon-pencil-square-o"></span>管理用户</h2>
			<ul>
				<li>
					<a href="<%=request.getContextPath() %>/pages/admin/manageUser.jsp" target="right"><span class="icon-caret-right"></span>用户管理</a>
				</li>
			</ul>
			<h2><span class="icon-pencil-square-o"></span>审查注册</h2>
			<ul>
				<li>
					<a href="<%=request.getContextPath() %>/pages/admin/checkUser.jsp" target="right"><span class="icon-caret-right"></span>用户注册信息</a>
				</li>
			</ul>
		</div>
		<script type="text/javascript">
			$(function() {
				$(".leftnav h2").click(function() {
					$(this).next().slideToggle(200);
					$(this).toggleClass("on");
				})
				$(".leftnav ul li a").click(function() {
					$("#a_leader_txt").text($(this).text());
					$(".leftnav ul li a").removeClass("on");
					$(this).addClass("on");
				})
			});
		</script>
		<ul class="bread">
			<li>
				<a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a>
			</li>
			<li>
				<a href="##" id="a_leader_txt">网站信息</a>
			</li>
		</ul>
		<div class="admin">
			<iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
		</div>

	</body>

</html>