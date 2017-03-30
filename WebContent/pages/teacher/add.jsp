<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	添加试题

	
-->
<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>添加试题</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
		<script src="<%=request.getContextPath() %>/js/click_form.js"></script>
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
			.field {
				line-height: 35px;
			}
		</style>
	</head>

	<body>
		<div class="panel admin-panel">
			<div class="panel-head"><strong class="icon-reorder"> 添加试题</strong></div>

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

			<div id="select-con" class="select-con">
				<!--选择题-->
				<div >
					<form method="post" class="form-x" action="#" style="display: block;">
						<div class="form-group">
							<div class="label">
								<label>题目：</label>
							</div>
							<div class="field">
								<textarea name="scopyright" class="input" style="height:120px;"></textarea>
								<div class="tips"></div>
							</div>
						</div>

						<div class="form-group">
							<div class="label">
								<label>选项A：</label>
							</div>
							<div class="field">
								<input type="text" class="input" placeholder="A选项内容"></input>
								<div class="tips"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label>选项B：</label>
							</div>
							<div class="field">
								<input type="text" class="input" placeholder="B选项内容"></input>
								<div class="tips"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label>选项C：</label>
							</div>
							<div class="field">
								<input type="text" class="input" placeholder="C选项内容"></input>
								<div class="tips"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label>选项D：</label>
							</div>
							<div class="field">
								<input type="text" class="input" placeholder="D选项内容"></input>
								<div class="tips"></div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="label">
								<label>答案：</label>
							</div>
							<div class="field">
								A&nbsp;&nbsp;<input type="radio"  name="OptionAnswer" value="A" />
								B&nbsp;&nbsp;<input type="radio" name="OptionAnswer" value="B" />
								C&nbsp;&nbsp;<input type="radio"  name="OptionAnswer" value="C" />
								D&nbsp;&nbsp;<input type="radio"  name="OptionAnswer" value="D" />
								<div class="tips"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label>解析：</label>
							</div>
							<div class="field">
								<textarea name="scopyright" class="input" style="height:120px;"></textarea>
								<div class="tips"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label></label>
							</div>
							<div class="field">
								<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
							</div>
						</div>
					</form>
				</div>
				<!--填空题-->
				<div >
					<form method="post" class="form-x" action="#" style="display: none;">
						<div class="form-group">
							<div class="label">
								<label>题目：</label>
							</div>
							<div class="field">
								<textarea name="scopyright" class="input" style="height:120px;"></textarea>
								<div class="tips"></div>
							</div>
						</div>

						<div class="form-group">
							<div class="label">
								<label>答案：</label>
							</div>
							<div class="field">
								<input class="input" name="sdescription"></input>
								<div class="tips"></div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="label">
								<label>解析：</label>
							</div>
							<div class="field">
								<textarea name="scopyright" class="input" style="height:120px;"></textarea>
								<div class="tips"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label></label>
							</div>
							<div class="field">
								<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</body>

</html>