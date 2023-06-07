package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DaoyouEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DaoyouVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DaoyouView;


/**
 * 导游
 *
 * @author 
 * @email 
 * @date 2021-05-14 17:10:48
 */
public interface DaoyouService extends IService<DaoyouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DaoyouVO> selectListVO(Wrapper<DaoyouEntity> wrapper);
   	
   	DaoyouVO selectVO(@Param("ew") Wrapper<DaoyouEntity> wrapper);
   	
   	List<DaoyouView> selectListView(Wrapper<DaoyouEntity> wrapper);
   	
   	DaoyouView selectView(@Param("ew") Wrapper<DaoyouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DaoyouEntity> wrapper);
   	
}

