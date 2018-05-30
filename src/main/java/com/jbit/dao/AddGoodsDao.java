package com.jbit.dao;

import com.jbit.entity.AddGoods;

public interface AddGoodsDao {
    AddGoods selectByPrimaryKey(Integer goodsNo);
}