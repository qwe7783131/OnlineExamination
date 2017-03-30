<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">  
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/js/loginAjax.js"></script>
    <script src="<%=request.getContextPath() %>/js/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:40px;"></div>
            <div class="media media-y margin-big-bottom"></div>
            <form id="ajaxForm" action="" method="post">
	            <div class="panel loginbox" >
	                <div class="text-center margin-big padding-big-top"><h1>在线考试系统</h1></div>
	                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
	                    <div class="form-group">
	                        <div class="field field-icon-right">
	                            <input type="text" class="input input-big" style="height: 43px" name="ID" placeholder="登录账号" data-validate="required:请填写账号" />
	                            <span class="icon icon-user margin-small"></span>
	                        </div>
	                    </div>
	                    <br/>
	                    <div class="form-group">
	                        <div class="field field-icon-right">
	                            <input type="password" class="input input-big" style="height: 43px" name="password" placeholder="登录密码" data-validate="required:请填写密码" />
	                            <span class="icon icon-key margin-small"></span>
	                        </div>
	                    </div>
	                    <br/>
	                    <div class="form-group">
	                        <div class="field">
	                            <input type="text" class="input input-big pull-left" style="height: 43px; width: 65%" name="inputRandomCode" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
<!-- 	                           <img src="images/passcode.jpg" alt="" class="passcode" style="height:43px;cursor:pointer; margin-bottom: 10px" onclick="this.src=this.src+'?'">   -->
	                              <img class="vcode" src="/images" onclick="this.src='/images?x='+Math.random()"><br/> <br/>
	                        </div>
	                    </div>
	                    <br/>
	                    <div class="form-type pull-left">
	                    	<div class="form-type-left">
		                    	<input name="userType" type="radio" value="student" /><em>学生</em>
		                    	<input name="userType" type="radio" value="teacher" /><em>老师</em>
		                    	<input name="userType" type="radio" value="admin" /><em>管理员</em>
<%-- 	                    	${message } --%>
	                    	</div>
	                    </div>
	                </div>
	                <div style="padding:30px;"><input type="button" onclick="ajaxform();" class="button button-block bg-main text-big input-big1" value="登录"></div>
	            </div>
            </form>
            <div class="panel panel-default" style="margin-top:-300px; position: absolute; display: none;" >
				<div class="panel-body" style="height: 200px; width: 391px;">
					<div id="Canvas" class="Canvas" style="text-align: center; padding-top: 60px;">
					</div>
				</div>
			</div>      
        </div>
    </div>
</body>
</html>