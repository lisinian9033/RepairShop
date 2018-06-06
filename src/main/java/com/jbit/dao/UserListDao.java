package com.jbit.dao;

import java.util.List;

import com.jbit.entity.UserList;

public interface UserListDao {
    UserList selectByPrimaryKey(Integer userNo);
    
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
    UserList findOne(String userName);
    
    /**
     * 删除会员
     */
    int delUser(Integer userNo);
    
}