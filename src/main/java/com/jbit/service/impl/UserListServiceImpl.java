package com.jbit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.UserListDao;
import com.jbit.entity.UserList;
import com.jbit.service.UserListService;

@Service("userListService")
public class UserListServiceImpl implements UserListService {

	@Resource
	private UserListDao userListDao;
	
	@Override
	public List<UserList> findAll() {
		return userListDao.findAll();
	}

	@Override
	public int addUser(UserList userList) {
		return userListDao.addUser(userList);
	}

	@Override
	public UserList findOne(String userName) {
		return userListDao.findOne(userName);
	}

}
