package com.jbit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.ExpensesRecordDao;
import com.jbit.entity.ExpensesRecord;
import com.jbit.service.ExpensesRecordService;

@Service("expensesRecordService")
public class ExpensesRecordServiceImpl implements ExpensesRecordService {

	@Resource
	private ExpensesRecordDao expensesRecordDao;
	
	@Override
	public List<ExpensesRecord> getExpensesRecordlist() {
	
		return expensesRecordDao.getExpensesRecordlist();
	}

}
