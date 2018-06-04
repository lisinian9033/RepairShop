package com.jbit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jbit.entity.OrderList;

public interface OrderListService {

	   /**
     *查询所有订单 
     * @return 所有订单
     */
    List<OrderList> getAllOrder();
    
    /**
     * 查询指定订单
     * @param orderNo 订单编号
     * @return 订单实体
     */
    OrderList getOneOrder(@Param("orderNo") Integer orderNo);
}
