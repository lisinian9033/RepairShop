package com.jbit.service;

import java.util.List;

import com.jbit.entity.GoodsClassify;

public interface GoodsClassifyService {

	
	/**
	 * 商品分类显示
	 * @return
	 */
	List<GoodsClassify> getGoodsClassifylist();
}
