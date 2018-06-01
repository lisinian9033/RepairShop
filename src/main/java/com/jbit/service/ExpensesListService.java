package com.jbit.service;

import java.util.List;

import com.jbit.entity.ExpensesList;

public interface ExpensesListService {

	/**
     * 显示消耗品
     */
    List<ExpensesList> getExpensesList();
}
