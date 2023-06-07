package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 导游
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-05-14 17:10:48
 */
@TableName("daoyou")
public class DaoyouEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DaoyouEntity() {
		
	}
	
	public DaoyouEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 导游证号
	 */
					
	private String daoyouzhenghao;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：导游证号
	 */
	public void setDaoyouzhenghao(String daoyouzhenghao) {
		this.daoyouzhenghao = daoyouzhenghao;
	}
	/**
	 * 获取：导游证号
	 */
	public String getDaoyouzhenghao() {
		return daoyouzhenghao;
	}
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
