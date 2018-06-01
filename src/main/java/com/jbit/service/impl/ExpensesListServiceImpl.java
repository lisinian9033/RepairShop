package com.jbit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jbit.dao.ExpensesListDao;
import com.jbit.entity.ExpensesList;
import com.jbit.service.ExpensesListService;

@Service("expensesListService")
public class ExpensesListServiceImpl implements ExpensesListService {

	
	@Resource
	private ExpensesListDao expensesListDao;
	
	@Override
	public List<ExpensesList> getExpensesList() {
		
		return expensesListDao.getExpensesList();
	}

}
