package com.jbit.dao;

import com.jbit.entity.RepairAdmin;

/**
 * 管理员登录
 * @author Administrator
 *
 */
public interface RepairAdminDao {
	
	/**
	 * 实现登录
	 */
	RepairAdmin login(RepairAdmin admin);
}