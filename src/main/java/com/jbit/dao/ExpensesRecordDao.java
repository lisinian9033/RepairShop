package com.jbit.dao;

import java.util.List;

import com.jbit.entity.ExpensesRecord;

public interface ExpensesRecordDao {
    
	/**
	 * 查询出入库记录
	 */
	List<ExpensesRecord> getExpensesRecordlist();
}