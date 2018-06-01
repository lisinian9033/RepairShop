package com.jbit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.GoodsClassifyDao;
import com.jbit.entity.GoodsClassify;
import com.jbit.service.GoodsClassifyService;

@Service("goodsClassifyService")
public class GoodsClassifyServiceImpl implements GoodsClassifyService {

	
	@Resource
	private GoodsClassifyDao goodsClassifyDao;
	
	@Override
	public List<GoodsClassify> getGoodsClassifylist() {
		
		return goodsClassifyDao.getGoodsClassifylist();
	}

}
