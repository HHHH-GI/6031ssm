package com.entity.view;

import com.entity.DaoyouEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 导游
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-14 17:10:48
 */
@TableName("daoyou")
public class DaoyouView  extends DaoyouEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DaoyouView(){
	}
 
 	public DaoyouView(DaoyouEntity daoyouEntity){
 	try {
			BeanUtils.copyProperties(this, daoyouEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
