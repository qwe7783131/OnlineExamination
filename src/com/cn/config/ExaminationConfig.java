package com.cn.config;


import com.cn.controller.*;
import com.cn.model.Administrator;
import com.cn.model.Choicequestion;
import com.cn.model.Classs;
import com.cn.model.Course;
import com.cn.model.Fillquestion;
import com.cn.model.Record;
import com.cn.model.Student;
import com.cn.model.Teacher;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

public class ExaminationConfig extends JFinalConfig{

	@Override
	public void configConstant(Constants me) {
		//读取配置文件
		PropKit.use("jdbc.properties");
		me.setViewType(ViewType.JSP);
		me.setDevMode(PropKit.getBoolean("devMode", false));
	}

	@Override
	public void configRoute(Routes me) {
		me.add("/", LoginController.class, "/pages");
		me.add("/student", StudentController.class, "/pages/student");
		me.add("/teacher", TeacherController.class, "/pages/teacher");
		me.add("/admin", AdminController.class, "/pages/admin");
	}

	public static DruidPlugin createDruidPlugin() {
		return new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("username"), PropKit.get("password").trim());
	}
	@Override
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		
		C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl", ""),PropKit.get("username", ""), PropKit.get("password", "").trim());
		
		
		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		//显示sql语句
		arp.setShowSql(true);
		
		arp.addMapping("administrator", "adid", Administrator.class);
		arp.addMapping("choicequestion", "courseId,choiceId",Choicequestion.class);
		arp.addMapping("class", "classId", Classs.class);
		arp.addMapping("course", "courseId", Course.class);
		arp.addMapping("fillquestion", "courseId,fillId", Fillquestion.class);
		arp.addMapping("record", "id", Record.class);
		arp.addMapping("student", "sid", Student.class);
		arp.addMapping("teacher", "tid", Teacher.class);
		me.add(c3p0Plugin);
		me.add(arp);
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void configHandler(Handlers me) {
//		me.add(new ContextPathHandler("contextPath"));//����������·��
	}

	@Override
	public void configEngine(Engine me) {
		// TODO Auto-generated method stub
		
	}

	public static void main(String[] args) {
		JFinal.start("WebContent", 89, "/", 5);
	}
}
