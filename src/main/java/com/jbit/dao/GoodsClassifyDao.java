package com.jbit.dao;

import com.jbit.entity.GoodsClassify;

public interface GoodsClassifyDao {
    GoodsClassify selectByPrimaryKey(Integer classifyNo);
}