package com.jbit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.StaffListDao;
import com.jbit.entity.StaffList;
import com.jbit.service.StaffListService;

@Service("staffListService")
public class StaffListServiceImpl implements StaffListService {

	@Resource
	private StaffListDao staffListDao;
	
	@Override
	public List<StaffList> getStaffList() {
		return staffListDao.getStaffList();
	}

	@Override
	public int addStaff(StaffList staffList) {
		return staffListDao.addStaff(staffList);
	}

	@Override
	public int delapp(int staffNo) {
		return staffListDao.delapp(staffNo);
	}

	@Override
	public List<StaffList> findStatus() {
		return staffListDao.findStatus();
	}

	@Override
	public List<StaffList> findCareer() {
		return staffListDao.findCareer();
	}

}
