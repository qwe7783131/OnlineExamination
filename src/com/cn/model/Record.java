package com.cn.model;

import com.jfinal.plugin.activerecord.Model;

public class Record extends Model<Record>{

	public static final Record dao = new Record().dao();
}
