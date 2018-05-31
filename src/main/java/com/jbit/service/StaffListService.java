package com.jbit.service;

import java.util.List;

import com.jbit.entity.StaffList;

public interface StaffListService {

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
    /**
     * 查询所有员工状态
     */
    List<StaffList> findStatus();
    /**
     * 查询所有员工岗位
     */
    List<StaffList> findCareer();
    /**
     * 根据员工状态查询员工信息
     * @param staffStatus 员工是否在职的状态
     * @return 所有员工信息
     */
    List<StaffList> findAllByStatus(String staffStatus);
}