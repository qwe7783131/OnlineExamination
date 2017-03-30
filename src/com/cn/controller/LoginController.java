package com.cn.controller;

import com.cn.model.Administrator;
import com.cn.model.Student;
import com.cn.model.Teacher;
import com.jfinal.captcha.CaptchaRender;
import com.jfinal.core.Controller;
import com.jfinal.kit.Ret;

public class LoginController extends Controller{
	
	public void index()
	{
		render("login.jsp");
	}
	
	/**
	 * 验证码的获取
	 */
	public void images() {
		CaptchaRender img = new CaptchaRender();
		render(img);
	}
	/**
	 * 判断用户登录
	 */
	public void getUser() {
		String id = getPara("ID");
		String password = getPara("password");
		String inputRandomCode = getPara("inputRandomCode");
		if(getPara("userType") == null) {
			setAttr("message", "请选择你的身份");
			setAttr("caozuo", false);
			renderJson();
		} else {
			String userType = getPara("userType");
			if(CaptchaRender.validate(this, inputRandomCode.toUpperCase())) {
				if (userType.equals("student")) {
					Student student = Student.dao.findById(id);
					if (student == null ) {
						setAttr("message", "该用户名不存在");
						setAttr("caozuo", false);
					} else {
						if (student.get("password").equals(password)) {
							setSessionAttr("student", student);
							setAttr("caozuo", true);
							setAttr("message", "pages/student/indexStudent.jsp");
						} else {
							setAttr("message", "输入的用户名或密码错误");
							setAttr("caozuo", false);
						}
					}
				} else if (userType.equals("teacher")) {
					Teacher teacher = Teacher.dao.findById(id);
					if (teacher == null ) {
						setAttr("message", "该用户名不存在");
						setAttr("caozuo", false);
					} else {
						if (teacher.get("password").equals(password)) {
							setSessionAttr("teacher", teacher);
							setAttr("caozuo", true);
							setAttr("message", "pages/teacher/indexTeacher.jsp");
						} else {
							setAttr("message", "输入的用户名或密码错误");
						}
					}
				} else if (userType.equals("admin")){
					Administrator admin = Administrator.dao.findById(id);
					if (admin == null ) {
						setAttr("message", "该用户名不存在");
						setAttr("caozuo", false);
					} else {
						if (admin.get("password").equals(password)) {
							setSessionAttr("admin", admin);
							setAttr("caozuo", true);
							setAttr("message", "pages/admin/indexAdmin.jsp");
						} else {
							setAttr("message", "输入的用户名或密码错误");
							setAttr("caozuo", false);
						}
					}
				}
			}
			else {
				setAttr("caozuo", false);
				setAttr("message", "验证码错误");
			}
			renderJson();
		}
	}

}
