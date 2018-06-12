package com.jbit.dao;

import java.util.List;

import com.jbit.entity.OrderList;

public interface OrderListDao {
    OrderList selectByPrimaryKey(Integer orderNo);
    
    /**
     *查询所有订单 
     * @return 所有订单
     */
    List<OrderList> getAllOrder(String orderUser);
    
    /**
     * 查询指定订单
     * @param orderNo 订单编号
     * @return 订单实体
     */
    OrderList getOneOrder(Integer orderNo);
}