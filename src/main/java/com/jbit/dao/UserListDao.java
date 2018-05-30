package com.jbit.dao;

import com.jbit.entity.UserList;

public interface UserListDao {
    UserList selectByPrimaryKey(Integer userNo);
}