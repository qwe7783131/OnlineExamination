<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	
	教师——试题管理
	
-->

<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>教师——试题管理</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
		<script src="<%=request.getContextPath() %>/js/click.js"></script>
		<style type="text/css">
			.select {
				text-decoration: underline;
			}
			
			.select-type ul,
			li {
				list-style: none;
				font: 16px/20px "微软雅黑";
			}
			
			.select-type li {
				display: block;
				float: left;
				margin-right: 20px;
			}
		</style>
	</head>

	<body>
		<div class="panel admin-panel">
			<div class="panel-head"><strong class="icon-reorder"> 试题管理</strong></div>

			<br>
			<div id="select-type" class="select-type">
				<ul>
					<li class="select">
						<a href="#">选择题</a>
					</li>
					<li>
						<a href="#">填空题</a>
					</li>
				</ul>
			</div>

			<br><br>
			<div class="padding border-bottom">
				<ul class="search">
					<li>
						<button type="button" class="button border-green" id="checkall"><span class="icon-check"></span> 全选</button>
					</li>
					<li>
						<button type="submit" class="button border-red"><span class="icon-trash-o"></span> 批量删除</button>
					</li>
					<li>
						<input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
						<a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()"> 搜索</a>
					</li>
				</ul>
			</div>

			<div id="select-con" class="select-con">
				<!--选择题-->
				<div style="display: block;">
					<form action="#" method="post">
						<table class="table table-hover text-center">
							<tr>
								<th width="100">题号</th>
								<th width="100">所属课程</th>
								<th width="18%">题目</th>
								<th width="18%">选项</th>
								<th width="10%">答案</th>
								<th width="14%">解析</th>
								<th>操作</th>
							</tr>
							<tr style="height: 115px;">
								<td><input type="checkbox" name="id[]" value="1" /> 1
								</td>
								<td>学生手册</td>
								<td>肇庆学院校训是？</td>
								<td>
									<p>A.不告诉你</p>
									<p>B.不告诉你</p>
									<p>C.不告诉你</p>
									<p>D.不告诉你</p>
								</td>
								<td>E</td>
								<td>此题没有解析</td>
								<td>
									<a class="button-group button border-blue" href="javascript:void(0)" onclick="">
										<span class="icon-trash-o"></span> 编辑
									</a>
									<a class="button-group button border-red" href="javascript:void(0)" onclick="return del(1)">
										<span class="icon-trash-o"></span> 删除
									</a>
								</td>
							</tr>
							<tr>
								<td colspan="8" class="pagelist">
									<a href="">上一页</a> <span class="current">1</span>
									<a href="">2</a>
									<a href="">3</a>
									<a href="">下一页</a>
									<a href="">尾页</a>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<!--填空题-->
				<div style="display: none;">
					<form action="#" method="post">
						<table class="table table-hover text-center">
							<tr>
								<th width="100">题号</th>
								<th width="100">所属课程</th>
								<th width="20%">题目</th>
								<th width="20%">答案</th>
								<th width="20%">解析</th>
								<th>操作</th>
							</tr>
							<tr style="height: 115px;">
								<td><input type="checkbox" name="id[]" value="1" /> 1
								</td>
								<td>学生手册</td>
								<td>肇庆学院校训是？</td>
								<td>厚德，明智，博学，力行</td>
								<td>此题没有解析</td>
								<td>
									<a class="button-group button border-blue" href="javascript:void(0)" onclick="">
										<span class="icon-trash-o"></span> 编辑
									</a>
									<a class="button-group button border-red" href="javascript:void(0)" onclick="return del(1)">
										<span class="icon-trash-o"></span> 删除
									</a>
								</td>
							</tr>
							<tr>
								<td colspan="8" class="pagelist">
									<a href="">上一页</a> <span class="current">1</span>
									<a href="">2</a>
									<a href="">3</a>
									<a href="">下一页</a>
									<a href="">尾页</a>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>

		</div>
		<script type="text/javascript">
			function del(id) {
				if(confirm("您确定要删除吗?")) {

				}
			}

			$("#checkall").click(function() {
				$("input[name='id[]']").each(function() {
					if(this.checked) {
						this.checked = false;
					} else {
						this.checked = true;
					}
				});
			})

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
				} else {
					alert("请选择您要删除的内容!");
					return false;
				}
			}
		</script>
	</body>

</html>