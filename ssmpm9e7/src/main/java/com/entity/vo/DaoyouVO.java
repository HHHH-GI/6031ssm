package com.entity.vo;

import com.entity.DaoyouEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 导游
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-05-14 17:10:48
 */
public class DaoyouVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 导游姓名
	 */
	
	private String daoyouxingming;
		
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 年龄
	 */
	
	private Integer nianling;
		
	/**
	 * 导游等级
	 */
	
	private String daoyoudengji;
		
	/**
	 * 导游语种
	 */
	
	private String daoyouyuzhong;
		
	/**
	 * 照片
	 */
	
	private String zhaopian;
		
	/**
	 * 旅行社
	 */
	
	private String lvxingshe;
				
	
	/**
	 * 设置：导游姓名
	 */
	 
	public void setDaoyouxingming(String daoyouxingming) {
		this.daoyouxingming = daoyouxingming;
	}
	
	/**
	 * 获取：导游姓名
	 */
	public String getDaoyouxingming() {
		return daoyouxingming;
	}
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(Integer nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public Integer getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：导游等级
	 */
	 
	public void setDaoyoudengji(String daoyoudengji) {
		this.daoyoudengji = daoyoudengji;
	}
	
	/**
	 * 获取：导游等级
	 */
	public String getDaoyoudengji() {
		return daoyoudengji;
	}
				
	
	/**
	 * 设置：导游语种
	 */
	 
	public void setDaoyouyuzhong(String daoyouyuzhong) {
		this.daoyouyuzhong = daoyouyuzhong;
	}
	
	/**
	 * 获取：导游语种
	 */
	public String getDaoyouyuzhong() {
		return daoyouyuzhong;
	}
				
	
	/**
	 * 设置：照片
	 */
	 
	public void setZhaopian(String zhaopian) {
		this.zhaopian = zhaopian;
	}
	
	/**
	 * 获取：照片
	 */
	public String getZhaopian() {
		return zhaopian;
	}
				
	
	/**
	 * 设置：旅行社
	 */
	 
	public void setLvxingshe(String lvxingshe) {
		this.lvxingshe = lvxingshe;
	}
	
	/**
	 * 获取：旅行社
	 */
	public String getLvxingshe() {
		return lvxingshe;
	}
			
}
