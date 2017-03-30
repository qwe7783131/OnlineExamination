<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	
	系统管理员——管理用户
	
	
-->
<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>系统管理员——管理用户</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
		<script src="<%=request.getContextPath() %>/js/click_form.js"></script>
		<style type="text/css">
			.select a{
				text-decoration: underline;
			}
			
			.select-type ul,
			li {
				list-style: none;
				font: 16px/20px "微软雅黑";
				margin-top: 10px;
			}
			
			.select-type li {
				display: block;
				float: left;
				margin-right: 20px;
			}
			
			.select-type li a{
				color: #0099FF;
			}
			
			.select-type li a:hover{
				color: #DF8505;
			}
		</style>
	</head>

	<body>
		<div class="panel admin-panel">
			<div class="panel-head"><strong class="icon-reorder"> 管理用户信息</strong></div>
			
			<br>
			<div id="select-type" class="select-type">
				<ul>
					<li class="select">
						<a href="#">学生用户</a>
					</li>
					<li>
						<a href="#">教师用户</a>
					</li>
				</ul>
			</div>

			<br><br>
			<div id="select-con" class="select-con">
				<form action="#" method="post" style="display: block;">
					<!--学生用户-->
					<a class="button border-main addStudent" href="javascript:void(0)" style="float: right; margin-right: 100px; margin-top: -30px" onclick="">添加学生</a>
					
					<table class="table table-hover text-center">
						<tr>
							<th width="100" style="text-align:left; padding-left:40px; width：10%；">学号</th>
							<th>班级</th>
							<th>姓名</th>
							<th>性别</th>
							<th>身份证号码</th>
							<th>系别</th>
							<th>电话号码</th>
							<th width="310">操作</th>
						</tr>
						<volist name="list" id="vo">
							<tr>
								<td style="text-align:left; padding-left:40px; width：10%；">1231231456</td>
								<td>14软件3班</td>
								<td>asd</td>
								<td>男</td>
								<td>456446512315645645</td>
								<td>计算机学院</td>
								<td>12345678912</td>
								<td>
									<div class="button-group">
										<a class="button border-red" href="javascript:void(0)" onclick=""> <span class="icon-trash-o"></span> 删除</a>
									</div>
								</td>
							</tr>

							<tr>
								<td colspan="8">
									<div class="pagelist">
										<a href="">上一页</a>
										<span class="current">1</span>
										<a href="">2</a>
										<a href="">3</a>
										<a href="">下一页</a>
										<a href="">尾页</a>
									</div>
								</td>
							</tr>
					</table>
				</form>
				<form action="#" method="post" style="display: none;">
					<!--教师用户-->
					<a class="button border-main addTeacher" href="javascript:void(0)" style="float: right; margin-right: 100px; margin-top: -30px" onclick="">添加教师</a>
					
					<table class="table table-hover text-center">
						<tr>
							<th width="100" style="text-align:left; padding-left:40px; width：10%；">教师编号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>身份证号码</th>
							<th>职称</th>
							<th>电话号码</th>
							<th width="310">操作</th>
						</tr>
						<volist name="list" id="vo">
							<tr>
								<td style="text-align:left; padding-left:40px; width：10%；">1231231456</td>
								<td>刘某某</td>
								<td>女</td>
								<td>456446512315645645</td>
								<td>教授</td>
								<td>12345678912</td>
								<td>
									<div class="button-group">
										<a class="button border-red" href="javascript:void(0)" onclick=""> <span class="icon-trash-o"></span> 删除</a>
									</div>
								</td>
							</tr>

							<tr>
								<td colspan="8">
									<div class="pagelist">
										<a href="">上一页</a>
										<span class="current">1</span>
										<a href="">2</a>
										<a href="">3</a>
										<a href="">下一页</a>
										<a href="">尾页</a>
									</div>
								</td>
							</tr>
					</table>
				</form>
			</div>
		</div>

		<script type="text/javascript">
			//搜索
			function changesearch() {

			}

			//单个删除
			function del(id, mid, iscid) {
				if(confirm("您确定要删除吗?")) {

				}
			}

			//全选
			$("#checkall").click(function() {
				$("input[name='id[]']").each(function() {
					if(this.checked) {
						this.checked = false;
					} else {
						this.checked = true;
					}
				});
			})

			//批量删除
			function DelSelect() {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {
					var t = confirm("您确认要删除选中的内容吗？");
					if(t == false) return false;
					$("#listform").submit();
				} else {
					alert("请选择您要删除的内容!");
					return false;
				}
			}

			//批量排序
			function sorts() {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");
					return false;
				}
			}

			//批量首页显示
			function changeishome(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量推荐
			function changeisvouch(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量置顶
			function changeistop(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量移动
			function changecate(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量复制
			function changecopy(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {
					var i = 0;
					$("input[name='id[]']").each(function() {
						if(this.checked == true) {
							i++;
						}
					});
					if(i > 1) {
						alert("只能选择一条信息!");
						$(o).find("option:first").prop("selected", "selected");
					} else {

						$("#listform").submit();
					}
				} else {
					alert("请选择要复制的内容!");
					$(o).find("option:first").prop("selected", "selected");
					return false;
				}
			}
		</script>
	</body>

</html>