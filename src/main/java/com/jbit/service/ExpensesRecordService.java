package com.jbit.service;

import java.util.List;

import com.jbit.entity.ExpensesRecord;

public interface ExpensesRecordService {

	/**
	 * 查询出入库记录
	 */
	List<ExpensesRecord> getExpensesRecordlist();
}
