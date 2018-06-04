package com.jbit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jbit.entity.UserList;

public interface UserListService {
	/**
     * 查询所有的会员
     * @return 所有的会员
     */
    List<UserList> findAll();
    
    /**
     * 添加会员信息
     * @param userList 会员实体
     * @return 所有会员信息
     */
    int addUser(UserList userList);
    
    /**
     * 通过会员姓名查找会员信息
     * @param userName 会员姓名
     * @return 会员信息
     */
    UserList findOne(@Param("userName") String userName);
}
