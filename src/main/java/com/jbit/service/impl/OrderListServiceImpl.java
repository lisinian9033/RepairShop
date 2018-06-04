package com.jbit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.OrderListDao;
import com.jbit.entity.OrderList;
import com.jbit.service.OrderListService;

@Service("orderListService")
public class OrderListServiceImpl implements OrderListService {

	@Resource
	private OrderListDao orderListDao;
	
	@Override
	public List<OrderList> getAllOrder() {
		return orderListDao.getAllOrder();
	}

	@Override
	public OrderList getOneOrder(Integer orderNo) {
		return orderListDao.getOneOrder(orderNo);
	}

}
