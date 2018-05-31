package com.jbit.dao;

import java.util.List;

import com.jbit.entity.StaffList;

public interface StaffListDao {
    StaffList selectByPrimaryKey(Integer staffNo);
    
    /**
     * 显示员工列表
     * @return
     */
    List<StaffList> getStaffList();
    
    /**
     * 添加员工
     * @param staffList 员工实体
     * @return 受影响行数
     */
    int addStaff(StaffList staffList);
    
    /**
	 * 删除员工
	 */
   int delapp(int staffNo);
}