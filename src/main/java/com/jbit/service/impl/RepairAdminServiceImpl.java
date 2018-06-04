package com.jbit.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.RepairAdminDao;
import com.jbit.entity.RepairAdmin;
import com.jbit.service.RepairAdminService;

@Service("repairAdminService")
public class RepairAdminServiceImpl implements RepairAdminService {

	@Resource
	private RepairAdminDao repairAdminDao;
	
	@Override
	public RepairAdmin login(RepairAdmin admin) {
		return repairAdminDao.login(admin);
	}

}
