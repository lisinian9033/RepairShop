package com.jbit.dao;

import java.util.List;

import com.jbit.entity.car;

public interface carDao {
    car selectByPrimaryKey(Integer carid);
    
    /**
     * 查询所有的汽车品牌下的类型
     * @return
     */
    List<car> findCarType(String carbrand);
    
    /**
     * 查询所有的汽车品牌
     * @return
     */
    List<car> findAll();
    
}