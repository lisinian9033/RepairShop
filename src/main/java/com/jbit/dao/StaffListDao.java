package com.jbit.dao;

import com.jbit.entity.StaffList;

public interface StaffListDao {
    StaffList selectByPrimaryKey(Integer staffNo);
}