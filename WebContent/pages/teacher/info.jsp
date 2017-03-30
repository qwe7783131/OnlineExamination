<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	
	教师——添加公告
-->


<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>教师——添加公告</title>  
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
    <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 公告信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
      <div class="form-group">
        <div class="label">
          <label>公告标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="stitle" value="" />
          <div class="tips"></div>
        </div>
      </div>

      <div class="form-group">
        <div class="label">
          <label>发布者：</label>
        </div>
        <div class="field">
          <input class="input" name="sdescription"></input>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>公告内容：</label>
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
</body></html>